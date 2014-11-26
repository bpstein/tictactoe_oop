# What is tictactoe?
# A board game with a board and two players. 
	# Board is initially empty with 3x3 squares.
	# One player is X.
	# One player is O.
	# Two players alternate to mark empty squares. 
	# Play continues until 3 of the same matching symbol are aligned or until all squares are taken.


class Board 

	def initialize
		@data = {}
		(1..9).each {|position| @data[position] = Square.new(' ')}
	end

	def draw 
		puts "Drawing board..."
		puts @data.inspect
	end

	def all_squares_marked?
		empty_squares.size == 0 
	end

	def empty_squares
		@data.select {|_, square| square.value == ' '}.values
	end

# Board
# 	-square
# 	-all_squares_marked?
# 	-find all empty squares

end

class Square
	attr_accessor :value

	def initialize(value)
		@value = value
	end
end


board = Board.new
board.draw

# class Player 

# 	def initialize
# 	end

# # Player
# # 	-name
# # 	-marker

# end



# Square
# 	-occupied
# 	-mark(marker)

class Game
	def initialize
	end
end