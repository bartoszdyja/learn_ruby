class Book
  attr_reader :title
  
  def title=(title)
    @title=title.split.map do |word|
      %w(a an the in and of).include?(word) ? word : word.capitalize
    end.join(' ')
    @title[0] = @title[0].capitalize
  end
end
