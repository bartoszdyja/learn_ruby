class RPNCalculator
  attr_accessor :values
  
  def initialize
    @values = []
  end
  
  def push(num)
    values << num
  end

  def plus
    raise ArgumentError, 'calculator is empty' unless values.size >1
    values.push(values.pop(2).reduce(:+))
  end

  def value
    values.last
  end

  def minus
    raise ArgumentError, 'calculator is empty' unless values.size >1
    values.push(values.pop(2).reduce(:-))
  end

  def divide
    raise ArgumentError, 'calculator is empty' unless values.size >1
    values.push(values.pop(2).map(&:to_f).reduce(:/))
  end

  def times
    raise ArgumentError, 'calculator is empty' unless values.size >1
    values.push(values.pop(2).reduce(:*))
  end

  def tokens(vals)
     vals.split.map! {|value|  value =~ /\d/ ? value.to_i : value.to_sym }
  end


  def evaluate s
    tokens(s).each do |t|
      case t
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push t
      end
    end
    value
  end
end

