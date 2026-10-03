# script_quote_fix.rb — a translated "Script" event command that picked up curly quotes.
#
# RPG Maker eval()s the text of a Script command. A translation written with typographic
# quotes leaves Ruby with no string at all:
#
#   hogeTexts.push(“Mong có em nào ngực to\nđến đây ^^”)
#
# Ruby then reports "syntax error, unexpected backslash" (the \n is outside any string) and
# the game stops on a modal error mid-play. Seen in the Vietnamese translation of
# "Dosukebe Chat Lady Yukino-chan"; any pack produced the same way carries it.
#
# On a SyntaxError we retry the same script with the quotes straightened. The retry only
# happens when straightening actually changed something, and anything the retry raises is
# left alone — a genuinely broken script still reports itself instead of being swallowed.
#
# Game_Interpreter only exists once the game's own scripts have loaded, which is after this
# file runs, so the patch is installed from rgss_main — the same trick cheat_hook.rb uses.

module MhScriptQuoteFix
  CURLY = {
    "“" => '"', "”" => '"',   # “ ”
    "‘" => "'", "’" => "'",   # ‘ ’
  }

  def self.straighten(text)
    out = text.dup
    CURLY.each { |from, to| out.gsub!(from, to) }
    out
  end

  def command_355
    start_index = @index
    super
  rescue SyntaxError => e
    @index = start_index
    script = @list[@index].parameters[0] + "\n"
    while next_event_code == 655
      @index += 1
      script += @list[@index].parameters[0] + "\n"
    end
    fixed = MhScriptQuoteFix.straighten(script)
    raise e if fixed == script
    eval(fixed)
  end
end

module MhScriptQuoteFixInstaller
  def rgss_main(&block)
    begin
      if defined?(Game_Interpreter) && !Game_Interpreter.include?(MhScriptQuoteFix)
        Game_Interpreter.prepend(MhScriptQuoteFix)
      end
    rescue
    end
    super
  end
end

begin
  Kernel.prepend(MhScriptQuoteFixInstaller)
rescue
end
