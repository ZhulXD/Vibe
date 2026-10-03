# Win32API parameter count fix: silently truncate >10-char type strings.
# MKXP-Z raises RuntimeError "too many parameters: N/10" on scripts like
# Fullscreen++ v2.2 that call Win32API.new with more than 10 type chars.
begin
  if defined?(Win32API) && !defined?($__minhub_win32api_param_fix)
    $__minhub_win32api_param_fix = true
    module Win32APIParamFix
      def initialize(dll, func, params, ret = 'v')
        params = params[0, 10] if params.is_a?(String) && params.length > 10
        super
      end
    end
    Win32API.prepend(Win32APIParamFix)
  end
rescue
end

# touch_move.rb  — MV/MZ-style touch controls for RPG Maker VX Ace (mkxp-z Android)
#
# HOW IT WORKS
#   On Android, SDL translates touch events → SDL_MOUSEBUTTONDOWN (left button).
#   mkxp-z exposes this as Input.trigger?(:MOUSELEFT) / Input.press?(:MOUSELEFT)
#   and Input.mouse_x / Input.mouse_y (already in GAME resolution, e.g. 544×416,
#   so the letterbox bars on a phone screen are already accounted for).
#
# HOOK STRATEGY
#   We wrap Input.update, which Scene_Base#update_basic calls every frame, plus
#   Input.press?/trigger? for the message case. This file is preloaded before the
#   game's own scripts exist, so nothing here may touch Game_* or Scene_* at load
#   time — every reference to them happens inside a method, at runtime.
#
# BEHAVIOUR
#   • Tap a tile     → walk there, finding a way around walls and furniture
#   • Tap an event   → walk up to it and press the action button (talk / examine)
#   • Tap yourself   → examine the tile you are standing on
#   • Hold & drag    → walk toward the finger continuously
#   • Tap / hold during a message → advance it / fast-forward
#   • Direction key or pad → cancels the walk, the pad always wins
#   • Menus, battles, cutscenes → left alone
#
# NOTE: VX Ace title and menu screens confirm with Input::C (Enter/Z), never with
#       the mouse, so tapping "New Game" on the title does nothing. That is
#       standard VX Ace behaviour — the on-screen Enter button is the way in.

module TouchMoveSystem
  TILE_SIZE          = 32   # VX Ace tile size in game-pixels
  # mkxp-z reports the cursor in RGSS3's default screen size, not in the size the game
  # is actually running at, so a game that called Graphics.resize_screen gets positions
  # that are too small by the ratio between the two. Verified on an 800x600 game: a
  # touch on the second menu row came back as y=33 (row 1 of the 544x416 space) where
  # the row really starts at y=48. Everything below works in real game pixels.
  MOUSE_SPACE_W      = 544.0
  MOUSE_SPACE_H      = 416.0
  HOLD_DELAY         = 45   # frames of holding still before drag-follow takes over
  DRAG_SLOP          = 24   # game-pixels the finger must travel to count as a drag
  SEARCH_LIMIT       = 2000 # tiles to explore before giving up on a route
  HOLD_REPEAT_START  = 20   # frames before a held finger starts turning pages
  HOLD_REPEAT_EVERY  = 10   # and how often it turns one after that

  @route      = nil   # remaining directions to walk, e.g. [6, 6, 2]
  @goal_event = nil   # event to face and activate when the route ends
  @hold_timer = 0
  @dragging   = false
  @down_x     = nil
  @down_y     = nil
  @ok_frame   = nil   # frame on which a touched menu item asked for the OK key

  class << self
    # Holding a finger down on a message keeps it advancing, the way holding the
    # confirm key skims dialogue — a tap alone only turns one page.
    def track_message_hold
      if message_tap? && Input.press?(:MOUSELEFT)
        @msg_hold = (@msg_hold || 0) + 1
      else
        @msg_hold = 0
      end
    rescue
      @msg_hold = 0
    end

    def message_hold_repeat?
      held = @msg_hold || 0
      held > HOLD_REPEAT_START && (held % HOLD_REPEAT_EVERY).zero?
    end

    def update
      track_message_hold
      # Menus, choice lists and item lists exist in every scene, so they are handled
      # before the map-only work below.
      handle_window_touch
      return unless defined?(SceneManager) && defined?(Scene_Map)
      unless SceneManager.scene_is?(Scene_Map)
        clear
        return
      end
      return unless $game_player && $game_map

      # The pad always wins: any direction held cancels where the player tapped.
      if Input.press?(:DOWN) || Input.press?(:UP) ||
         Input.press?(:LEFT) || Input.press?(:RIGHT)
        clear
        return
      end

      # Messages are handled by the Input.press?/trigger? wrapper below, and a
      # running event owns the player, so taps must not queue movement here.
      if ($game_message && $game_message.busy?) || $game_map.interpreter.running?
        clear
        return
      end

      if Input.trigger?(:MOUSELEFT)
        @hold_timer = 0
        @dragging = false
        pos = cursor
        if pos
          @down_x, @down_y = pos
          plan(pos[0], pos[1])
        end
      elsif Input.press?(:MOUSELEFT)
        @hold_timer += 1
        pos = cursor
        # A drag is a finger that travelled, or one held in place well past the
        # length of a tap — otherwise a slightly long tap would throw away the
        # route we just found and only take one greedy step.
        @dragging ||= dragged?(pos) || @hold_timer >= HOLD_DELAY
        # Dragging is continuous steering, so follow the finger directly rather
        # than pathfinding to a target that moves every frame.
        step_toward(pos[0], pos[1]) if @dragging && pos
      else
        @hold_timer = 0
        @dragging = false
      end

      walk_route
    rescue
      # never crash the game loop
    end

    # A tap counts as the action button only while a plain message is showing, so
    # tapping can never confirm a choice or a number the player did not aim at.
    def message_tap?
      return false unless $game_message
      return false unless $game_message.busy?
      return false if $game_message.choice?
      return false if $game_message.num_input?
      return false if $game_message.item_choice?
      true
    rescue
      false
    end

    def clear
      @route = nil
      @goal_event = nil
    end

    # ── Touching menus, choices and lists ──────────────────────────────────────
    #
    # RGSS3 windows only ever look at the keyboard, so a choice or a menu command
    # could not be picked by touch at all. On a tap we find the window that has the
    # cursor, work out which item is under the finger, move the cursor there and
    # report the OK key for that one frame — the window's own process_ok then runs,
    # so every handler, sound and cancel path behaves exactly as with a key press.

    def handle_window_touch
      return unless defined?(::Window_Selectable)
      return unless Input.trigger?(:MOUSELEFT)
      pos = cursor
      return if pos.nil?
      win = active_selectable
      return unless win
      index = item_index_at(win, pos[0], pos[1])
      return if index.nil?
      win.select(index) if win.index != index
      # Input.update has already run for this frame, so a window updating later in
      # the same frame still sees the key.
      @ok_frame = Graphics.frame_count
    rescue
    end

    def touched_ok?
      !@ok_frame.nil? && @ok_frame == Graphics.frame_count
    rescue
      false
    end

    # The window holding the cursor. Nested windows count: a choice list lives
    # inside the message window, not directly on the scene.
    def active_selectable
      scene = SceneManager.scene
      return nil unless scene
      candidates = collect_selectables(scene, 0, [])
      candidates.select { |w|
        (w.active && w.visible && w.open? && !w.disposed? && w.item_max > 0) rescue false
      }.max_by { |w| w.z rescue 0 }
    rescue
      nil
    end

    def collect_selectables(obj, depth, acc)
      return acc if obj.nil? || depth > 2
      obj.instance_variables.each do |name|
        value = (obj.instance_variable_get(name) rescue nil)
        case value
        when ::Window_Selectable
          acc << value
          collect_selectables(value, depth + 1, acc)
        when ::Window_Base
          collect_selectables(value, depth + 1, acc)
        when Array
          value.each { |item| collect_selectables(item, depth + 1, acc) if item.is_a?(::Window_Base) }
        end
      end
      acc
    rescue
      acc
    end

    # Which item sits under the finger, or nil when the tap missed the list.
    def item_index_at(win, mx, my)
      first = win.top_row * win.col_max
      last = [first + win.page_item_max, win.item_max].min - 1
      return nil if last < first
      (first..last).each do |index|
        rect = win.item_rect(index)
        x = win.x + win.padding + rect.x - win.ox
        y = win.y + win.padding + rect.y - win.oy
        next if mx < x || mx >= x + rect.width
        next if my < y || my >= y + rect.height
        return index
      end
      nil
    rescue
      nil
    end

    # Cursor position in real game pixels, or nil when it is off-screen.
    def cursor
      mx = Input.mouse_x
      my = Input.mouse_y
      return nil if mx.nil? || my.nil? || mx < 0 || my < 0
      [(mx * Graphics.width / MOUSE_SPACE_W).floor,
       (my * Graphics.height / MOUSE_SPACE_H).floor]
    rescue
      nil
    end

    def dragged?(pos)
      return false if pos.nil? || @down_x.nil? || @down_y.nil?
      (pos[0] - @down_x).abs > DRAG_SLOP || (pos[1] - @down_y).abs > DRAG_SLOP
    end

    # ── Tapping ────────────────────────────────────────────────────────────────

    def plan(mx, my)
      return if mx.nil? || my.nil? || mx < 0 || my < 0
      tx = $game_map.round_x(($game_map.display_x + mx.to_f / TILE_SIZE).floor)
      ty = $game_map.round_y(($game_map.display_y + my.to_f / TILE_SIZE).floor)

      if tx == $game_player.x && ty == $game_player.y
        clear
        $game_player.send(:check_event_trigger_here, [0]) rescue nil
        return
      end

      event = event_at(tx, ty)
      # Tapping scenery, a wall or the far side of one used to send the player off
      # toward whichever reachable tile happened to be closest, which read as the
      # character wandering. A tap with nowhere to go now does nothing at all.
      if event.nil? && !enterable?(tx, ty)
        clear
        return
      end

      route = search(tx, ty, !event.nil?)
      if route.empty? && event.nil?
        clear
        return
      end
      @route = route.empty? ? nil : route
      @goal_event = event
      # Already standing next to what was tapped: just turn and use it.
      activate_goal if @route.nil? && event
    end

    # Can the player step onto this tile from any side?
    def enterable?(x, y)
      return false unless $game_map.valid?(x, y)
      [[x, y - 1, 2], [x, y + 1, 8], [x - 1, y, 6], [x + 1, y, 4]].any? do |nx, ny, dir|
        $game_map.valid?(nx, ny) && $game_player.passable?(nx, ny, dir)
      end
    rescue
      false
    end

    def event_at(x, y)
      $game_map.events_xy(x, y).find { |e| e.list && !e.list.empty? }
    rescue
      nil
    end

    def activate_goal
      event = @goal_event
      clear
      return unless event
      return unless (event.x - $game_player.x).abs + (event.y - $game_player.y).abs == 1
      $game_player.turn_toward_character(event)
      $game_player.send(:check_event_trigger_there, [0]) rescue nil
    end

    # ── Pathfinding ────────────────────────────────────────────────────────────

    # Breadth-first search over the tiles the player may walk on, returning the
    # directions to get there — or nothing at all when there is no way through.
    # Walking toward "the closest tile we found" instead was what made a tap on the
    # far side of a wall look like the character wandering off.
    # stop_short: finish beside the goal instead of on it (events block their tile).
    def search(gx, gy, stop_short)
      sx = $game_player.x
      sy = $game_player.y
      from = { [sx, sy] => nil }
      queue = [[sx, sy]]
      seen = 0

      until queue.empty?
        x, y = queue.shift
        seen += 1
        break if seen > SEARCH_LIMIT
        [[2, 0, 1], [4, -1, 0], [6, 1, 0], [8, 0, -1]].each do |dir, dx, dy|
          nx = $game_map.round_x(x + dx)
          ny = $game_map.round_y(y + dy)
          next if from.key?([nx, ny])
          if nx == gx && ny == gy
            return trace(from, [x, y]) if stop_short
            if $game_player.passable?(x, y, dir)
              from[[nx, ny]] = [x, y, dir]
              return trace(from, [nx, ny])
            end
            next
          end
          next unless $game_player.passable?(x, y, dir)
          from[[nx, ny]] = [x, y, dir]
          queue.push([nx, ny])
        end
      end

      []
    end

    def trace(from, node)
      steps = []
      while (step = from[node])
        steps.unshift(step[2])
        node = [step[0], step[1]]
      end
      steps
    end

    # ── Walking ────────────────────────────────────────────────────────────────

    def walk_route
      return if @route.nil?
      return unless $game_player.movable?
      return if $game_player.moving?
      if @route.empty?
        activate_goal
        return
      end
      $game_player.move_straight(@route.first)
      # move_straight leaves moving? false when something got in the way.
      unless $game_player.moving?
        clear
        return
      end
      @route.shift
    end

    # Single greedy step toward the finger, used while dragging.
    def step_toward(mx, my)
      return if mx.nil? || my.nil? || mx < 0 || my < 0
      clear
      return unless $game_player.movable?
      return if $game_player.moving?
      tx = $game_map.round_x(($game_map.display_x + mx.to_f / TILE_SIZE).floor)
      ty = $game_map.round_y(($game_map.display_y + my.to_f / TILE_SIZE).floor)
      dx = tx - $game_player.x
      dy = ty - $game_player.y
      dir = if dx.abs >= dy.abs && dx != 0
        dx > 0 ? 6 : 4
      elsif dy != 0
        dy > 0 ? 2 : 8
      end
      return unless dir
      $game_player.move_straight(dir)
    rescue
    end
  end
end

# ---------------------------------------------------------------------------
# Hook Input via define_singleton_method (reliable for C module functions).
# ---------------------------------------------------------------------------
begin
  _tms_orig_update  = Input.method(:update)
  _tms_orig_press   = Input.method(:press?)
  _tms_orig_trigger = Input.method(:trigger?)

  Input.define_singleton_method(:update) do
    _tms_orig_update.call
    TouchMoveSystem.update
  end

  # Report a touch as the action button while a message is up: tap to advance,
  # hold to fast-forward, exactly like tapping the text box in MV/MZ.
  Input.define_singleton_method(:press?) do |key|
    raw = _tms_orig_press.call(key)
    if !raw && key == :C && TouchMoveSystem.message_tap?
      (_tms_orig_press.call(:MOUSELEFT) rescue false)
    else
      raw
    end
  end

  Input.define_singleton_method(:trigger?) do |key|
    raw = _tms_orig_trigger.call(key)
    next raw if raw || key != :C
    # A touched menu item asks for OK on its own frame; a touched message advances.
    next true if TouchMoveSystem.touched_ok?
    if TouchMoveSystem.message_tap?
      (_tms_orig_trigger.call(:MOUSELEFT) rescue false) ||
        TouchMoveSystem.message_hold_repeat?
    else
      false
    end
  end
rescue
end
