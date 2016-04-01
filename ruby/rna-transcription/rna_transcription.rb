class Complement
  VERSION = 3

  def self.of_dna(dna)
    dna_array = dna.split(//)
    rna_array = []
    dna_array.each do |letter|
      if letter == 'C'
        rna_array << 'G'
      elsif letter == 'G'
        rna_array << 'C'
      elsif letter == 'T'
        rna_array << 'A'
      elsif letter == 'A'
        rna_array << 'U'
      else
        raise ArgumentError
      end
    end
    rna_array.join
  end
end