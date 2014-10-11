module Gravity

  def self.read(file)
    raw = File.read(file)
    string_array = raw.split("\n")
    array_array = string_array.map do |line|
      line.split("")
    end
    return array_array
  end

  def self.falls(file)
    array_array = self.read(file).transpose.reverse
    array_array.each_index |falling_index| do
      

      if array_array[falling_index] == " "



      if array_array[falling_index] == " " && array_array[falling_index+1] == "*"
        array_array[falling_index] = "*"
        array_array[falling_index+1] = " "
      end




    self.write(array_array.transpose)
  end


    counter = 0

    array_array[0].each_index do |object_index|


counter += 1
    end

    array_array[0..-2].each_index do |line_index|
      line.each_index do |object_index|
        if array_array[line_index][object_index] == "*" && array_array[line_index+1][object_index] == " "
          
      end

    end


    array_array[0..-2].each_index do |line_index|
      line.each_index do |object_index|
        if array_array[line_index][object_index] == "*" && array_array[line_index+1][object_index] == " "
          array_array[line_index][object_index] = " "
          array_array[line_index+1][object_index] = "*"
        # elsif array_array[line_index][object_index] == "*" && array_array[line_index+1][object_index] == "*"
        #   trouble << [line_index, object_index]
        end
      end
    end

    check = true
    while check
      

    end
  end

  def self.write(array_array)
    
    open("sorted_beach.txt", 'w') do |f|
      
      array_array.each do |line|
        line = line.join
        f << line + "\n"
      end

    end
  end

end

file = 'beach.txt'
Gravity.falls(file)



# module Gravity

#   def self.read(file)
#     raw = File.read(file)
#     string_array = raw.split("\n")
#     array_array = string_array.map do |line|
#       line.split("")
#     end
#     return array_array
#   end

#   def self.falls(file)
#     array_array = self.read(file)

#     array_array[0..-2].each_index do |line_index|
#       line.each_index do |object_index|
#         if array_array[line_index][object_index] == "*" && array_array[line_index+1][object_index] == " "
#           array_array[line_index][object_index] = " "
#           array_array[line_index+1][object_index] = "*"
#         # elsif array_array[line_index][object_index] == "*" && array_array[line_index+1][object_index] == "*"
#         #   trouble << [line_index, object_index]
#         end
#       end
#     end

#     check = true
#     while check
      

#     end
#   end

#   def self.write(array_array)
    
#     open("sorted_beach.txt", 'w') do |f|
      
#       array_array.each do |line|
#         line = line.join
#         f << line + "\n"
#       end

#     end
#   end

# end

# file = 'beach.txt'
# Gravity.falls(file)


