class  Temperature
  attr_reader :fahrenheit, :celsius
  def initialize(args)
    @fahrenheit = args[:f]
    @celsius = args[:c]
  end

  def in_fahrenheit
    return ((celsius*9/5.0)+32) if celsius
    fahrenheit if fahrenheit
  end

  def in_celsius
    return ((fahrenheit-32)*5/9) if fahrenheit
    celsius if celsius
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end
end

class Celsius < Temperature
  def initialize(celsius)
    @celsius = celsius
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    @fahrenheit = fahrenheit
  end
end
