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
		system 'clear'
		puts 
		puts "			|				|"
		puts "	#{@data[1]} 	|		#{@data[2]} 	| #{@data[3]}"
		puts "			|				|"
		puts "______+_______+_______"
		puts "	#{@data[4]} 	|		#{@data[5]} 	| #{@data[6]}"
		puts "			|				|"
		puts "______+_______+_______"
		puts "			|				|"
		puts "	#{@data[7]} 	|		#{@data[8]} 	| #{@data[9]}"
		puts "			|				|"
	end

	def all_squares_marked?
		empty_squares.size == 0 
	end

	def empty_squares
		@data.select {|_, square| square.value == ' '}.values
	end

	def empty_positions
	 @data.select {|_, square| !square.empty?}.keys
	end
	
	def mark_square(position, marker)
		@data[postion].mark(marker)
	end

end

class Square
	attr_accessor :value

	def initialize(value)
		@value = value
	end

	def mark(marker)
		@value = marker
	end

	def occupied?
		@value != ' '
	end

	def empty?
		@value == ' '
	end
end

class Player
	attr_reader :marker
	def initialize(name, marker)
		@name = name
		@marker = marker
	end
end


class Game
	def initialize
		@board = Board.new
		@human = Player.new("Ben", "X")
		@computer = Player.new("C-3P0", "O")
		@current_player = @human
	end

	def current_player_marks_square
		if @current_player == @human
			begin 
				puts "Choose a positin (1-9):"
				position = gets.chomp.to_i
			end until @board.empty_positions.include?(position)
		else
			position = @board.empty_positions.sample
		end
		@board.mark_square(position, @current_player.marker)
	end

	def alternate_player
		if @current_player == @human
			@current_player = @computer
		else
			@current_player = @human
		end
	end

	def play
		@board.draw
		loop do 
			current_player_marks_square
		end
	end
end

Game.new.play