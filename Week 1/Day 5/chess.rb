class Board

	def initialize
	@start_positions = {
		rook: [[0,0], [7,0], [0,7], [7,7]],
		knight: [[1,0], [6,0], [1,7], [6,7]],
		bishop: [[2,0], [5,0], [2,7], [5,7]],
		queen: [[3,0], [3,7]],
		king: [[4,0], [4,7]],
		pawn: [[0,1], [1,1], [2,1], [3,1], [4,1], [5,1], [6,1], [7,1], [0,6], [1,6], [2,6], [3,6], [4,6], [5,6], [6,6], [7,6]]
	}

	@letters_to_x = {
		a: 0
		b: 1
		c: 2
		d: 3
		e: 4
		f: 5
		g: 6
		h: 7
	}
	end

	def convert_pos(position)
		position = position.split
		position[0] = 
	end

end

board = Board.new