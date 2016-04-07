class Array
  def sum
    self.reduce(0,:+)
  end

  def square!
    square
  end

  def square
    self.map!{|x| x**2}
  end
end
