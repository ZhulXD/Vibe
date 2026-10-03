# battle_trace.rb
# Diagnostic: trace Scene_Battle key methods to find battle freeze location.
# Uses TracePoint to defer instrumentation until after game scripts are loaded.
# Remove this file after diagnosis is complete.

unless defined?($__battle_trace__)
  $__battle_trace__ = true

  _bt_trace = TracePoint.trace(:end) do |tp|
    next unless tp.self.is_a?(Class) && tp.self.name == "Scene_Battle"

    klass = tp.self

    # Install wrappers only once (guard with __bt_installed__)
    next if klass.instance_variable_get(:@__bt_installed__)
    klass.instance_variable_set(:@__bt_installed__, true)

    _bt_trace.disable

    [
      [:start_main,                   :__bt_sm__],
      [:move1_info_viewport,          :__bt_mv1__],
      [:move2_info_viewport,          :__bt_mv2__],
      [:process_battle_event,         :__bt_pbe__],
      [:start_party_command_selection,:__bt_spcs__],
      [:turn_end,                     :__bt_te__],
    ].each do |name, orig|
      next unless klass.method_defined?(name)
      klass.alias_method(orig, name)
      klass.define_method(name) do |*args, &blk|
        p "[BT] >> #{name}"
        send(orig, *args, &blk)
        p "[BT] << #{name} DONE"
      end
    end

    p "[BT] battle_trace installed"
  end

end
