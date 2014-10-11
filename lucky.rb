# In some countries of former Soviet Union there was
# a belief about lucky tickets. A transport ticket
# of any sort was believed to posess luck if sum of
# digits on the left half of its number was equal to
# the sum of digits on the right half. Here are
# examples of such numbers:
#
# 003111    #         3 = 1 + 1 + 1
# 813372    # 8 + 1 + 3 = 3 + 7 + 2
# 17935     #     1 + 7 = 3 + 5
# 56328116  # ???
#
# Such tickets were either eaten after being used
# or collected for bragging rights.
#
# Read the tests carefully and ake them pass.
#
# Credit to SundaySalsa on codewars.com for coming
# up with this problem.

class Lucky

  def self.check(str)

    raise error if str == "" || /\D/.match(str)

    left_half = str.to_s.split('')[0..(str.to_s.length/2)-1]
    right_half = str.to_s.split('')[(str.to_s.length/2)..-1]
    right_half = right_half.drop(1) if right_half.length != left_half.length
            
    return left_half.map(&:to_i).inject(:+) == right_half.map(&:to_i).inject(:+)

  end

  # def self.check(str)

  #   if str == "" || /\D/.match(str)
  #     raise error
  #   end

  #   str.to_s.length.even? ? i = str.to_s.length/2 : i = str.to_s.length/2+1

  #   left_half = str.to_s.split('')[0..(str.to_s.length/2)-1]
  #   right_half = str.to_s.split('')[i..-1]

  #   return left_half.map(&:to_i).inject(:+) == right_half.map(&:to_i).inject(:+)

  # end
end
