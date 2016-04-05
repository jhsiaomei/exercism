class Grains
  def self.square(number)
    grains = [1]
    63.times do |index|
      grains << grains[index]*2
    end
    grains

    grains[number-1]
  end

  def self.total
    grains = [1]
    63.times do |index|
      grains << grains[index]*2
    end
    grains

    total = 0
    grains.each do |grain|
      total += grain
    end
    total
  end
end