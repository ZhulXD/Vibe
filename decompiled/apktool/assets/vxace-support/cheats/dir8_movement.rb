# dir8_movement.rb — MinHub 8-direction DPad for VX Ace (mkxp-z Android)
# NOTE: This file is NOT loaded by mkxp-z's runCustomScript (not in its list).
# The actual patch is injected via drainCheatQueue in VxAcePatches.dir8MovementScript().
# Kept here for reference; must match VxAcePatches.kt exactly.
#
# DPad sends a single numpad key per diagonal (Numpad7/9/1/3).
# Input.dir8 returns 7/9/1/3 from those keys without simultaneous detection.

begin
  if defined?(Game_Player) && !Game_Player.method_defined?(:__mh8_orig)
    class Game_Player
      alias __mh8_orig move_by_input
      def move_by_input
        return if !movable? || $game_map.interpreter.running?
        case Input.dir8
        when 7 then move_diagonal(4, 8)
        when 9 then move_diagonal(6, 8)
        when 1 then move_diagonal(4, 2)
        when 3 then move_diagonal(6, 2)
        else        __mh8_orig
        end
      end
    end
  end
rescue
end
