# win32api_screen_fix.rb
# mkxp-z stubs Win32API and some stubs return nil for numeric return types.
# Scripts that call GetSystemMetrics / GetWindowRect to get screen dimensions
# crash with "undefined method '-' for nil:NilClass" when doing arithmetic.
#
# Strategy: wrap Win32API.new at the singleton level (same pattern as how
# touch_move.rb wraps Input.update), then wrap each instance's call method
# via define_singleton_method so the function name is captured in a closure.
# This avoids prepend/alias_method interactions with Win32APIParamFix.

unless defined?($__minhub_win32api_screen_fix__)
  $__minhub_win32api_screen_fix__ = true

  if defined?(Win32API)
    begin
      _mh_orig_new = Win32API.method(:new)

      Win32API.define_singleton_method(:new) do |dll, func, params = '', ret = 'v'|
        obj = _mh_orig_new.call(dll, func, params, ret)
        _fn = func.to_s rescue ''
        begin
          _orig_call = obj.method(:call)
          obj.define_singleton_method(:call) do |*args|
            # SystemParametersInfo(SPI_GETWORKAREA=0x30 / SPI_GETDESKTOPRECT-style): the real
            # Win32 call writes a RECT{left,top,right,bottom} into the buffer (args[2]) and returns
            # non-zero. mkxp-z's stub returns nil -> callers (WLIB::GetDesktopRect) fall into the
            # "else result = nil" branch and later crash on nil.width. Fill the buffer with the
            # full screen rect and return 1 so the success branch runs.
            if _fn == 'SystemParametersInfo' && args[0] == 0x30 && args[2].is_a?(String)
              begin
                _w = (Graphics.width  rescue 544)
                _h = (Graphics.height rescue 416)
                args[2].replace([0, 0, _w, _h].pack('l4'))
                next 1
              rescue
              end
            end
            result = _orig_call.call(*args)
            if result.nil?
              if _fn == 'GetSystemMetrics' && args[0].is_a?(Integer)
                result = case args[0]
                         when 0 then (Graphics.width  rescue nil) || 544
                         when 1 then (Graphics.height rescue nil) || 416
                         else 0
                         end
              else
                result = 0
              end
            end
            result
          end
        rescue
          # If singleton wrap fails, return unwrapped object (still better than crash)
        end
        obj
      end
    rescue
    end
  end

end
