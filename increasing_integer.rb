class Challenge
  def self.increasing_sequence(array)

    counter = 0
    max_array = [array[0]]
    array[1..-1].each do |number|
      if max_array.last <= number
        max_array << number
      else
        counter = max_array.length if max_array.length > counter
        max_array = [number]
      end
    end
    puts counter
  end
end

Challenge.increasing_sequence([9,7,8,2,5,5,8,7])
Challenge.increasing_sequence([3,2,1])
Challenge.increasing_sequence([1,2,1,2])