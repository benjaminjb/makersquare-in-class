class Poetry

  def self.sestina?(input)

    stanzas_split = input.split(/\n\n/)
    word_array_by_stanza_by_line = []
    stanza_input.map do |stanza|
      word_array = []
      stanza.split(/\n/).each {|line| word_array << line[-1] }
      word_array_by_stanza_by_line << word_array
    end
    counter = 1
    while self.single_end_word_checker(word_array_by_stanza_by_line)
      counter +=1
      word_array_by_stanza_by_line = self.swap_stanzas(word_array_by_stanza_by_line)
    end
    if counter == 6
      puts "You have a sestina"
    else
      puts "You have an error: the word #{word_array_by_stanza_by_line[0][0]} is out of place."
    end
  end

  def self.swap_stanzas(array_of_arrays)
    first_array_to_become_last = array_of_arrays.shift
    array_of_arrays << first_array_to_become_last
  end

  def self.single_end_word_checker(array_of_arrays)
    # checks entire poem for single word in correct position across stanzas

    (word_array_by_stanza_by_line[0][0] == word_array_by_stanza_by_line[1][1] == word_array_by_stanza_by_line[2][3] == word_array_by_stanza_by_line[3][4] == word_array_by_stanza_by_line[4][2] == word_array_by_stanza_by_line[5][5])

  end

end