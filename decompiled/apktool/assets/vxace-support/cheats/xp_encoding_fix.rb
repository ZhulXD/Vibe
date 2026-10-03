# Encoding fix for RPG Maker XP games with non-UTF-8 text (e.g. Shift-JIS).
# In Ruby 3.x, String#gsub! raises ArgumentError: "invalid byte sequence in
# UTF-8" when a string contains bytes that are not valid UTF-8.  This is
# common in RGSS1 games whose scripts were written under Ruby 1.8 / Shift-JIS.
#
# Fix: rescue the error, re-tag the string as BINARY (= no encoding check),
# then retry the same gsub!.  BINARY encoding is safe here because RGSS1
# message processing treats strings as raw byte sequences anyway.
#
# The `unless` guard makes this script idempotent (safe to load more than once).
# Second fix, for the other direction: a game translated out of Japanese ends up with
# letters the old encoding cannot represent, and any script that converts strictly dies.
# Seen in "Dosukebe Chat Lady Yukino-chan", whose fake-fullscreen script does
#   load_data("Data/System.rvdata2").game_title.encode('SHIFT_JIS')
# to find its window by title: the Vietnamese title starts "Cô", Shift_JIS has no "ô",
# and the game stops on a modal error before its first frame. The converted string is
# only handed to a Win32 call that does nothing on Android, so replacing the characters
# that do not fit is better than refusing to start. Strict conversion is still tried
# first — this only changes what happens when it would have raised.
unless String.method_defined?(:_mh_encode_orig)
  class String
    alias_method :_mh_encode_orig, :encode

    def encode(*args)
      _mh_encode_orig(*args)
    rescue Encoding::UndefinedConversionError, Encoding::InvalidByteSequenceError
      args = args[0...-1] if args.last.is_a?(Hash)
      _mh_encode_orig(*args, :invalid => :replace, :undef => :replace, :replace => "?")
    end
  end
end

unless String.method_defined?(:_gsub_enc_orig!)
  class String
    alias_method :_gsub_enc_orig!, :gsub!

    def gsub!(*args, &block)
      _gsub_enc_orig!(*args, &block)
    rescue FrozenError
      nil
    rescue ArgumentError => e
      raise unless e.message.include?("invalid byte sequence")
      force_encoding(Encoding::BINARY)
      _gsub_enc_orig!(*args, &block)
    end
  end
end
