# def count_down(x)
#   if x == 0
#     puts x
#     return
#   end
#   puts x
#   count_down(x-1)
# end

# count_down(5)

# Patrick's solution
# puts x
# count_down(x-1) if x > 0

# for count_up, switch the positions of the puts and the recursion call

  # def fizzbuzz(x)
  #   fizzbuzz(x-1) if x > 1
  #   if x % 15 == 0 
  #     puts "fizzbuzz" 
  #   elsif x % 3 == 0 
  #     puts "fizz" 
  #   elsif x % 5 == 0 
  #     puts "buzz" 
  #   else
  #     puts x
  #   end
  # end

  # fizzbuzz(15)

# def exp(a, b)
#   a *= exp(a,b-1) if b > 1
#   return a
# end

# test = exp(2,3)
# puts test

def three_N_plus_one(n)
  puts n
  unless n == 1
    if n % 2 == 0
      n /= 2
    else
      n = n * 3 + 1
    end
    three_N_plus_one(n)
  end 
end

three_N_plus_one(4)
