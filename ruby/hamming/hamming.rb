class Hamming
  VERSION = 1

  def self.compute(x, y)
    if x == y
      0
    elsif x.length == y.length
      diff = []
      x_array = x.split(//)
      y_array = y.split(//)
      x_array.each_with_index {|letter, index| diff << letter if letter != y_array[index]}
      diff
      diff.length
    elsif x.length > y.length
      raise ArgumentError.new("First strand is longer than second")
    elsif x.length < y.length
      raise ArgumentError.new("Second strand is longer than first")
    end
  end
end