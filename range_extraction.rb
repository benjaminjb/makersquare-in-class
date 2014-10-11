# A format for expressing an ordered list of integers is
# to use a comma separated list of either:
#
#    - individual integers
#    - or a range of integers denoted by the starting
#      integer separated from the end integer in the
#      range by a dash, '-'. The range includes all
#      integers in the interval including both endpoints.
#      It is not considered a range unless it spans at
#      least 3 numbers. For example:  ("12, 13, 15-17")
#
# Complete the solution so that it takes a list of
# integers in increasing order and returns a correctly
# formatted string in the range format.
#
# Credit to user jhoffner on codewars.com
require 'pry-byebug'

class RangeEx
  
  def self.parse(range)
    if (range.is_a?(Array))
      range_begin = nil
      range_array = []
      incremental = false
      range.flatten!

      range.each_index do |index|
        if (range[index].next == range[index+1] && incremental == false)
          range_begin = range[index]
          incremental = true
        elsif (range[index].next == range[index+1] && incremental == true)
          next
        elsif (range[index].next != range[index+1] && incremental == true && ((((range_begin).ord - (range[index]).ord).abs) > 1))
          incremental = false
          range_array << "#{range_begin}-#{range[index]}"
        elsif (range[index].next != range[index+1] && incremental == true && ((((range_begin.ord) - (range[index]).ord).abs) == 1))
          incremental = false
          range_array << "#{range_begin}"
          range_array << "#{range[index]}"
        else 
          range_array << "#{range[index]}"
        end 
      end
      return range_array.join(',')
    else
      raise
    end
  end

end




