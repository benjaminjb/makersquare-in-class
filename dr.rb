# A digital root is the recursive sum of all the digits in a number.
# Given n, take the sum of the digits of n. If that value has two
# digits, continue reducing in this way until a single-digit number
# is produced. This is only applicable to the real numbers and zero.

# Make the tests pass.


module DigitalRoot

  def self.calculate(num)
    while (num.to_s.length > 1)
      num = num.to_s.split('').map {|x| x.to_i}.inject(:+)
    end
    return num
  end

  def self.calculate2(num)
    while (num.to_s.length > 1)
      first_digit = num % 10
      rest = num / 10
      num = rest + first_digit
    end
    num  
  end

end