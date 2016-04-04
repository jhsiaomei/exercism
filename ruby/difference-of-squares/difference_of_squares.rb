class Squares
  VERSION = 2
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = 0
    count = 1
    @number.times do
      sum += count
      count += 1
    end
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    count = 1
    @number.times do
      sum += count**2
      count += 1
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end