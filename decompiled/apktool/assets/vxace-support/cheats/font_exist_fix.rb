# font_exist_fix.rb
# Font.exist? in mkxp-z on Android may return false for fonts bundled in the
# game's Fonts/ directory even when the .ttf/.otf file is present. This is
# because mkxp-z does not always register bundled fonts in the font cache
# before scripts run.
#
# Fix: if Font.exist?(name) returns false, also check whether a font file
# whose normalized filename matches `name` exists in the Fonts/ directory.
# Normalization: strip spaces/hyphens/underscores, downcase.
#   e.g. "UmePlus Gothic" => "umeplusgothic"
#        "umeplus-gothic.ttf" => "umeplusgothic"  => match
#
# Safe for all RGSS versions (XP / VX / VX Ace): only changes behavior when
# the original Font.exist? would have returned false AND a matching file is
# found in Fonts/. If Fonts/ is empty or the file is absent, behavior is
# identical to the original.

unless defined?($__font_exist_fix__)
  $__font_exist_fix__ = true

  if Font.respond_to?(:exist?)
    class Font
      class << self
        alias_method :__exist_orig_ffe__, :exist?

        def exist?(name)
          return true if __exist_orig_ffe__(name)
          begin
            norm = name.to_s.gsub(/[\s\-_]/, '').downcase
            Dir.glob("Fonts/*.{ttf,otf,TTF,OTF}").any? do |path|
              File.basename(path, ".*").gsub(/[\s\-_]/, '').downcase == norm
            end
          rescue
            false
          end
        end
      end
    end
  end

end
