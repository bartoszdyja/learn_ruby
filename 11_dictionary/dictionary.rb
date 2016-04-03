class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}
  end

  def add(args)
    if args.is_a? String
      entries[args]=nil
    else
      entries[args.keys[0]] = args.values[0]
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(word)
    entries.include? word
  end

  def find(word)
    entries.select{|k,v| k=~/#{word}/}
  end 

  def printable
    entries.sort.map do |k,v|
     "[#{k}] \"#{v}\"" 
    end.join("\n")
  end 
end
