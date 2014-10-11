 class nqueens

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
        solution = place_queen(board,possible_spots_left,unplaced_queens)
        if solution
            solutions_array << solution
        end
        # end
        print solutions_array
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

    def self.place_queen(board,possible_spots_left,unplaced_queens)
        clone = possible_spots_left
        if clone < unplaced_queens
            return false
        else
            clone.each do |spot|
                deleter(clone,spot)
            end
        end
                



        while possible_spots_left > unplaced_queens
            unplaced_queens -= 1


            if unplaced_queens > 0 && possible_spots_left.length > 0
                place_queen(board,possible_spots_left,unplaced_queens)
            end
        end
        if unplaced_queens == 0
            return board
        else
            return false
        end
    end

    def deleter(clone,spot)
        clone.delete(spot)
        clone.delete_if { |spots| spot[0]==spots[0] || spot[1]==spots[1] }
        diagonals = find_diagonals(clone,spot)
        if diagonals
            diagonals.each {|item| clone.delete(item)}
        end
    end


end
        