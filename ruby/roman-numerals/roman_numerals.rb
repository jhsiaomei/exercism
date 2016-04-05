class Fixnum
  VERSION = 1
  
  ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I"
  }


  def to_roman
    total = self
    roman_numerals = []
    ROMAN_NUMBERS.each do |number, numeral|
      while total >= number
        roman_numerals << numeral
        total -= number
      end
    end
    roman_numerals.join
  end
end