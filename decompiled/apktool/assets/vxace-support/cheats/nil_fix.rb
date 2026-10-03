# Add empty? and blank? to NilClass — fixes scripts that call nil.empty? (e.g. Ace_Message_System
# start_name_window calling set_width with a nil name string).
begin
  if !defined?($__minhub_nil_fix)
    $__minhub_nil_fix = true
    class NilClass
      def empty?; true; end
      def blank?; true; end
      # Win32API stubs on Android/mkxp-z return nil for numeric results.
      # Scripts that do arithmetic on the result (e.g. Bbishop get_win_size:
      # a[2]-a[0] where a comes from GetWindowRect) crash with NoMethodError.
      # Treat nil as 0 for numeric operators so those calculations return 0
      # instead of crashing.
      # Arithmetic operators: nil as left operand (e.g. nil - x) → treat as 0.
      # Note: NilClass already has & and | for boolean logic — do NOT override those.
      def -(other); 0; end
      def +(other); 0; end
      def *(other); 0; end
      def /(other); 0; end
      # coerce: handles nil as RIGHT operand (e.g. 5 + nil, 5 - nil).
      # Ruby calls nil.coerce(5) → [0, 0] → evaluates 0 op 0 = 0.
      def coerce(other); [0, 0]; end
    end
  end
rescue
end
