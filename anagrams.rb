# Given an array of words create a new array of arrays such that
# each sub-array contains a word and all of its anagrams from the
# original array.

# Make the tests pass.

module Anagrams

  def self.find (terms)
    array_of_words = []
    terms.each do |word|
      word_array = [word]
      terms.each do |other_word|
        if (word.split('').sort == other_word.split('').sort)
          word_array << other_word
        end
      end
      word_array = word_array.uniq.sort
      array_of_words << word_array if word_array.length > 1
    end
    array_of_words = array_of_words.uniq
  end

# Kelsey's solution
  def self.find2(terms)
    terms.group_by {|x| x.split('').sort}.select{|_,v| v.size > 1}.values
  end

end