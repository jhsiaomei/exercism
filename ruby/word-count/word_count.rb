class Phrase
  VERSION = 1
  
  attr_accessor :phrase

  def initialize(input_phrase)
    @phrase = input_phrase
  end

  def word_count
    array = phrase.downcase.scan(/[\w']+/)
    count = Hash.new 0
    array.each do |word|
      if word[0] == "'" && word[-1] == "'"
        word.slice!(0)
        word.slice!(-1)
      end
      count[word] += 1
    end
    count
  end
end