class Sums

  def self.num_of_sums(num)
    counter = 0
    if num <= 1
      return
    else
      counter += 1
      num_of_sums(num-counter)
      num_of_sums(counter)
      # num_l = num/2
      # num_r = num/2
      # num_of_sums(num_l)
      # num_of_sums(num_r)
    end
    puts counter + num/2
  end

end

Sums.num_of_sums(4)