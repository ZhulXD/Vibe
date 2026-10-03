module AsCheater
  def self.update
    while (script = MKXP.get_queued_cheat)
      eval(script) rescue nil
    end
  rescue
  end
end
