class algorithms
  def self.fizzbuzz(num)
    answer = []
    (1..num).each do |each|
      if (each % 3 == 0 && each % 5 ==0)
        answer << "fizzbuzz"
      elsif (each % 3 == 0)
        answer << "fizz" 
      elsif (each % 5 ==0)
        answer << "buzz"
      else
        answer << "#{each}"
      end
    end
    print answer.join(', ')
  end

  def self.factorial_recursive(num)
    if num-1 > 0
        num * factorial_recursive(num-1)
    else
        1
    end
  end

  def self.factorial_recursive2(x)
    return x if x <= 1
    factorial_recursive2(x-1) * x
  end

  def self.count_down(x)
    return x if x <= 0
    puts x
    count_down(x-1)
  end

  def self.fizzbuzz(x)
    fizzbuzz(x-1) if x > 1
    if x % 15 == 0 
      puts "fizzbuzz" 
    elsif x % 3 == 0 
      puts "fizz" 
    elsif x % 5 == 0 
      puts "buzz" 
    else
      puts x
    end
  end


end