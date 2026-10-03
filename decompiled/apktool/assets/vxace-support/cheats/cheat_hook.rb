module AsCheater
  def self.poll
    while (script = MKXP.get_queued_cheat)
      eval(script) rescue nil
    end
  rescue
  end
end

module MkxpHook
  def update
    super
    AsCheater.poll rescue nil
  end
end

module CheatMainHook
  def rgss_main(&block)
    begin
      [Scene_Base, Scene_Map, Window_Selectable].each do |cls|
        cls.prepend(MkxpHook) rescue nil
      end
    rescue
    end
    super
  end
end

begin
  Kernel.prepend(CheatMainHook)
rescue
end
