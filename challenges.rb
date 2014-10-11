
module Challenges
	
	def self.anagram?(string1,string2)
    self.anagram_prep(string1) == self.anagram_prep(string2)
  end

  def self.anagram_prep(string)
    string = string.gsub(/\W/, "")
    string = string.downcase
    string = string.split("")
    string = string.sort
    string
  end

  def self.cats(number)
    # counter = 1
    # cats_in_hats = []
    # (1..number).to_a.each do |num|
    #   if num % (counter**2) == 0
    #     cats_in_hats << num 
    #     counter += 1
    #   end
    # end
    # return cats_in_hats

    # counter = 1
    # square = counter**2
    # cats_in_hats = []
    # until square > number
    #   counter += 1
    #   square = counter**2
    #   cats_in_hats << square
    # return cats_in_hats

    cats_in_hats = []
    counter = 1
    while counter**2 < number
      cats_in_hats << counter**2
      counter += 1
    end
  end

  def self.darts(array)
    # version 1

    # points = 0
    # array.each do |dart|
    #   if dart > 10
    #     points += 0 
    #   elsif dart >= 5
    #     points += 5
    #   elsif dart < 5
    #     points += 10
    #   end
    # end
    # points

    # version 2

    # points = 0
    # array.each do |dart|
    #   points += 0 if dart > 10   
    #   points += 5 if dart >= 5 && dart <= 10
    #   points += 10 if dart < 5
    # end
    # points

    # version 3

    # array.inject(0) do |sum, dart| 
    #   sum += 0 if dart > 10   
    #   sum += 5 if dart >= 5 && dart <= 10
    #   sum += 10 if dart < 5
    #   sum
    # end

    # forgot bonus!
    center = false
    array.inject(0) do |sum, dart| 
      if dart > 10   
        sum += 0
        center = false
      if dart >= 5 && dart <= 10
        sum += 5
        center = false
      if dart < 5
        sum += 10
        center = true
      end
      sum
    end
    if center
      sum += 100
    end
    sum
  end

  def self.guess_gifts(wishlist, presents)
    result = []
    presents.each do |unknown_prezzie|
      result << wishlist.select { |wished| (wished[:size] == unknown_prezzie[:size]) && (wished[:clatters] == unknown_prezzie[:clatters]) && (wished[:weight] == unknown_prezzie[:weight])}
    end
    result.flatten.map {|toy| toy[:name] }.uniq

    # can make result a set... can you flatten a set?
  end

  def self.n_queens(num)
    board,possible_spots_left = board_builder(num)
    unplaced_queens = num
    # first_quarter = []
    # board[0..(board.length/2-1)].each do |first_rows| 
    #     first_rows[0..first_rows.length/2-1].each do |answer| 
    #         first_quarter << answer
    #     end
    # end
    solutions_array = []

    # first_quarter.each do |spot|
    solution = place_queen(spot,board,possible_spots_left,unplaced_queens)
    if solution
        solutions_array << solution
    end
    # end
    prints solutions_array

  end
    
  def self.board_builder(num)
    board = []
    possible_spots_left = []
    counter = 0
    num.times do
        mixA = (0...num).to_a
        mixB = Array.new(num) {counter}
        zipper = mixB.zip(mixA)
        board << zipper
        counter += 1
    end
    possible_spots_left = board.flatten(1)
    return board, possible_spots_left
  end

  def self.place_queen(spot,board,possible_spots_left,unplaced_queens)
    while possible_spots_left > unplaced_queens

    else
        return false
    end
  end


end
    

