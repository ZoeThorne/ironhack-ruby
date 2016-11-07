require "pry"

class Cell
	attr_accessor :state, :neighbours
  def initialize(state, neighbours)
    @state = state 
    @neighbours = neighbours 
  end

  def regenerate
    total_neighbours = @neighbours.reduce(0, :+)
    if total_neighbours < 2
    	@state = 0
    elsif total_neighbours == 2 || total_neighbours ==  3
    	@state = 1
    else
    	@state = 0
    end

  end

end

cell1 = Cell.new(0, [0,0,0,0,0,0,0,0])
cell2 = Cell.new(1, [0,0,0,0,0,0,1,1])
cell3 = Cell.new(0, [0,0,0,0,0,1,1,1])
cell4 = Cell.new(1, [0,0,0,0,0,0,0,0])
cell5 = Cell.new(1, [0,0,0,0,1,1,1,1])

cell1.regenerate
puts cell1.state

cell2.regenerate
puts cell2.state

cell3.regenerate
puts cell3.state

cell4.regenerate
puts cell4.state

cell5.regenerate
puts cell5.state

binding.pry