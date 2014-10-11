class Challenge

  def self.parens(string)
    counter = 0
    index = 0
    while counter >=0 && index < string.length
      if string[index] == '('
        counter += 1
      elsif string[index] == ')'
        counter -= 1
      end
      index += 1
    end    
    if counter == 0
      puts 'yes'
    else
      puts 'no'
    end

  end
end


Challenge.parens('()(A(X))')
Challenge.parens(')(')
Challenge.parens('(()))()')
Challenge.parens('(()()))')
