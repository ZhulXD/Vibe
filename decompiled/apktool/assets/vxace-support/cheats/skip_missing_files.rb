# skip_missing_files.rb
# When a Graphics file is missing, return a transparent placeholder bitmap
# instead of showing the error dialog and crashing the game.
# Equivalent to RPG Maker MZ's SkipError plugin, adapted for RGSS1/RGSS3.
#
# Covers: Bitmap.new("Graphics/...") calls from Cache, battle system, UI, etc.

unless defined?($__skip_missing_files__)
  $__skip_missing_files__ = true

  class Bitmap
    class << self
      alias_method :__new_orig__, :new

      def new(*args, &block)
        __new_orig__(*args, &block)
      rescue => e
        # Only substitute when loading by filename (single String arg).
        # Let Bitmap.new(width, height) errors propagate normally.
        if args.size == 1 && args[0].is_a?(String)
          warn "[SkipMissingFile] #{args[0]}" rescue nil
          __new_orig__(32, 32)  # 32x32 transparent placeholder
        else
          raise
        end
      end
    end
  end

end
