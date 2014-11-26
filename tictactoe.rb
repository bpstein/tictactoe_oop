# What is tictactoe?
# A board game with a board and two players. 
	# Board is initially empty with 3x3 squares.
	# One player is X.
	# One player is O.
	# Two players alternate to mark empty squares. 
	# Play continues until 3 of the same matching symbol are aligned or until all squares are taken.



Board
	-square
	-all_squares_marked?
	-find all empty squares

Player
	-name
	-marker

Square
	-occupied
	-mark(marker)

Game