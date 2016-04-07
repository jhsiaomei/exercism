class Bob
  def hey(remark)
    if remark == ''
      'Fine. Be that way!'
    elsif remark.letters?
      'Whatever.'
    elsif remark == remark.upcase
      'Whoa, chill out!'
    elsif remark.split(//).last.include?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end