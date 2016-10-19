require "pry"
class Hall
	attr_reader :exits

	def initialize
		@exits = ["N","W","E"]
		@description = "You are in a hall. There are doors to the north, west and east."
	end

	def describe
		puts "#{@description}"
	end

end


class Kitchen
	attr_reader :exits

	def initialize
		@exits = {
			W: "hall"
				}
		@description = "You are in a kitchen. There is a door to the west."
	end

	def describe
		puts "#{@description}"
	end

end

class Library
	attr_reader :exits

	def initialize
		@exits = {
			E: "hall"
				}
		@description = "You are in a library. There is a door to the east."
	end

	def describe
		puts "#{@description}"
	end

end

class Garden
	attr_reader :exits, :description

	def initialize
		@exits = {
			N: "forest",
			S: "hall"
				}
		@description = "You are in a garden. There is a door to the south and a path to the north."
	end

	def describe
		puts "#{@description}"
	end

end

class Forest
	attr_reader :exits

	def initialize
		@exits = {
			S: "garden"
				}
		@description = "You are in a forest. There is a path to the south."
	end

	def describe
		puts "#{@description}"
	end

end

class Player
	attr_accessor :current_room, :player_move

	def initialize
		@current_room = Hall.new
		@player_move = player_move
	end

	def describe_room
		puts "#{@current_room.describe}"
	end

	def get_input
		puts "What do you want to do?"
		@player_move = gets.chomp
	end

	def move
		this_room = @current_room.class
		if @player_move == "quit"
			puts "Thanks for playing!"
		elsif this_room == Hall
			case @player_move
			when "N"
				@current_room = Garden.new
			when "E"
				@current_room = Kitchen.new
			when "W"
				@current_room = Library.new
			when "S"
				puts "You bang into a wall."
				get_input
				move
			else
				"Command not recognised."
				get_input
				move			
			end
		elsif this_room == Garden
			case @player_move
			when "N"
				@current_room = Forest.new
			when "E","W"
				puts "You bang into a wall."
				get_input
				move
			when "S"
				@current_room = Hall.new
			else
				"Command not recognised."
				get_input
				move
			end
		elsif this_room == Kitchen
			case @player_move
			when "N","E","S"
				puts "You bang into a wall."
				get_input
				move
			when "W"
				@current_room = Hall.new
			else
				"Command not recognised."
				get_input
				move
			end
		elsif this_room == Library
			case @player_move
			when "N","W","S"
				puts "You bang into a wall."
				get_input
				move
			when "E"
				@current_room = Hall.new
			else
				"Command not recognised."
				get_input
				move
			end
		elsif this_room == Forest
			case @player_move
			when "S"
				@current_room = Garden.new
			when "E","W", "N"
				puts "You bang into a wall."
				get_input
				move
			else
				"Command not recognised."
				get_input
				move
			end
		end

	end

	def turn
		until @player_move == "quit" do
			describe_room
			get_input
			move
		end
	end

	
end 

#hall = Room.new(["N","W","E"], "You are in a hall. There are doors to the north, west and east.")
#garden = Room.new(["N","S"], "You are in a garden. There is a door to the south and a path to the north.")
#forest = Room.new(["S"], "You are in a forest. There is a path to the south.")
#kitchen = Room.new(["W"], "You are in a kitchen. There is a door to the west.")
#library = Room.new(["E"], "You are in a library. There is a door to the east.")

player = Player.new
player.turn

binding.pry
