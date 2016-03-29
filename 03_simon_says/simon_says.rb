def echo(msg)
  msg
end

def shout(msg)
  msg.upcase
end

def repeat(msg, n=2)
  ("#{msg} "*n).chop
end

def start_of_word(str,n)
  str[0,n]
end

def first_word(str)
  str.split.first
end

def titleize(str)
  str.capitalize!
  str.split.map do |word|
    %(and over the).include?(word) ? word : word.capitalize
  end.join(' ')
end
