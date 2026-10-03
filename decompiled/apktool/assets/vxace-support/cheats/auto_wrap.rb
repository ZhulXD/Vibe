# auto_wrap.rb  — Auto word-wrap for VX Ace message windows (mkxp-z Android)
#
# WHY Input.update HOOK?
#   TracePoint does not fire when scripts are loaded via rb_eval_string_protect
#   (how mkxp-z runs Scripts.rvdata2). So we cannot watch for Game_Message#add
#   being defined. Instead we piggy-back on Input.update — already hooked by
#   touch_move.rb and confirmed to run every frame. We check once per frame
#   until Game_Message exists, then patch it and stop checking.

module AutoWrapSystem
  @enabled = true unless defined?(@enabled)   # default ON — toggled from RPGSettingsActivity
  @bmp     = nil unless defined?(@bmp)

  def self.enabled?;       @enabled; end
  def self.set_enabled(v); @enabled = !!v; end
  # Method-level check instead of an @patched flag: mkxp-z can run a preload script
  # more than once (see xp_encoding_fix.rb), which would re-open this module and,
  # with a plain instance-variable guard, reset it - patching Game_Message#add a
  # second time. That second alias_method captures the ALREADY-WRAPPED add as
  # _aw_orig_add, so the new add ends up calling _aw_orig_add which calls
  # _aw_orig_add (looked up by name, now pointing at itself) forever - a self-
  # recursive infinite loop ("stack level too deep") the moment any message is
  # shown. Checking method_defined? survives re-execution the same way
  # xp_encoding_fix.rb's String patch does.
  def self.patched?
    defined?(Game_Message) && Game_Message.method_defined?(:_aw_orig_add)
  end

  # ── One-time deferred patch (called from Input.update until success) ───────
  def self.check_and_patch
    return if patched?
    return unless defined?(Game_Message) && Game_Message.method_defined?(:add)
    patch_game_message
  rescue
  end

  def self.patch_game_message
    return if patched?
    Game_Message.class_eval do
      alias_method :_aw_orig_add, :add
      def add(text)
        if AutoWrapSystem.enabled?
          # content width: screen minus standard_padding*2 (12 each side)
          max_w = (Graphics.width - 24) rescue 520
          # face graphic shifts text right by 112 px
          max_w -= 112 unless face_name.empty? rescue nil
          text = AutoWrapSystem.wrap_text(text, max_w)
        end
        _aw_orig_add(text)
      end
    end
  rescue
  end

  # ── Word-wrap implementation ───────────────────────────────────────────────
  def self.wrap_text(text, max_w)
    return text unless @enabled && text.is_a?(String) && !text.empty?
    lines  = text.split("\n", -1)
    result = lines.flat_map { |line| wrap_line(line, max_w) }
    result.join("\n")
  rescue
    text
  end

  def self.wrap_line(line, max_w)
    return [line] if line.empty?
    bmp   = measure_bmp
    words = line.split(" ")
    cur   = ""
    out   = []
    words.each do |word|
      test = cur.empty? ? word : "#{cur} #{word}"
      if bmp.text_size(test).width > max_w && !cur.empty?
        out << cur
        cur = word
      else
        cur = test
      end
    end
    out << cur unless cur.empty?
    out.empty? ? [line] : out
  rescue
    [line]
  end

  def self.measure_bmp
    @bmp = nil if @bmp&.disposed?
    @bmp ||= Bitmap.new(1, 1)
    @bmp.font.size = Font.default_size rescue nil
    @bmp
  end
end

# ---------------------------------------------------------------------------
# Hook Input.update via define_singleton_method (works with C module functions
# unlike alias_method on singleton class).
# Each frame: try to patch Game_Message#add until it succeeds, then no-op.
# ---------------------------------------------------------------------------
begin
  _aw_orig_update = Input.method(:update)
  Input.define_singleton_method(:update) do
    _aw_orig_update.call
    AutoWrapSystem.check_and_patch
  end
rescue
end
