class XmlDocument
  attr_reader :intents
  attr_accessor :i
  def initialize(intents = false)
    @i = 0
    @intents = intents
  end

  def method_missing(name,args={})
    return "<#{name} #{args.keys.first}='#{args.values.first}'/>#{new_line}" unless args.empty?
    return "<#{name}>#{intent}#{yield}#{intent_back}</#{name}>#{new_line}" if block_given?
    return "<#{name}/>#{new_line}"
  end

  def intent
    self.i += 1
    "\n" + '  ' * i if intents
  end

  def intent_back
    self.i -= 1
    '  ' * i if intents
  end

  def new_line
    "\n" if intents
  end
end
