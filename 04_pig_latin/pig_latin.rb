def translate_word(str)
  until str[0] =~ /[aeiou]/ do
    str.slice(0,2)=='qu' ? n=2 : n=1
    str=str.split('').rotate(n).join
  end
  str+'ay'
end

def translate(str)
  str.split.map do |word|
    translate_word(word)
  end.join(' ')
end
