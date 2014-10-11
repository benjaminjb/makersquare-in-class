class ColumnChallenge

  def self.read_in(file)
    raw = File.read(file)

    #find first \n and get template array of columns, chars per column, space between
    first_newline = raw.index(/\n/)
    template = raw[0..first_newline].split(' ')

    #drops the template line from the file text
    raw = raw[first_newline..-1]

    self.format_and_output(raw,template)
  end

  def self.format_and_output(text,template)
    # split text into column-width chunks
    char_per_column = template[1].to_i
    # text_split_into_array_by_char_per_column = text.scan(/.{#{char_per_column}}/)
    text_split_into_array_by_char_per_column = text.scan(/[^W]{,25}\W/)

    # (/.{,25}\b/)

    # add spaces to each line to bring it up to column width
    text_split_into_array_by_char_per_column.each do |line|
      space_needed = " " * (char_per_column - line.length).to_i
      line << space_needed
    end

    # find height of text
    number_of_columns = template[0].to_i
    height = text_split_into_array_by_char_per_column.length / number_of_columns

    # create space template
    spacer = " " * template[2].to_i

    # create lines array
    array_of_lines = []
    height.times do |index|

    # create line for each line of output text
      line = []
      number_of_columns.times do |other_column_index|
        line << text_split_into_array_by_char_per_column[index + (other_column_index * height)]
      end
      array_of_lines << line.join(spacer)

    end

    # output text to file
    # array_of_lines = array_of_lines.join('\n')
    target = open('column-output.txt', 'w')
    array_of_lines.each do |line|
      target.puts(line)
    end
    target.close
  end

end

ColumnChallenge.read_in('column-input.txt')