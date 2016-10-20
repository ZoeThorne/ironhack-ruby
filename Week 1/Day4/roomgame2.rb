require "pry"
class Thing
end

class LightObject < Thing
end

class Sword < LightObject
end

class Banana < LightObject
end

class Book < LightObject
end

class Mushroom < LightObject
end

class Dog < Thing
end

class Hall
	attr_reader :exits, :items

	def initialize
		@exits = {
			N: "garden",
			W: "library",
			E: "kitchen"
		}
		@description = "You are in a hall."
		@items = [Sword.new]
	end

	def describe
		puts "\n#{@description}"
	end

end


class Kitchen
	attr_reader :exits, :items

	def initialize
		@exits = {
			W: "hall"
				}
		@description = "You are in a kitchen."
		@items = [Banana.new]
	end

	def describe
		puts "\n#{@description}"
	end

end

class Library
	attr_reader :exits, :items

	def initialize
		@exits = {
			E: "hall"
				}
		@description = "You are in a library.."
		@items = [Book.new]
	end

	def describe
		puts "\n#{@description}"
	end

end

class Garden
	attr_reader :exits, :items

	def initialize
		@exits = {
			N: "forest",
			S: "hall"
				}
		@description = "You are in a garden."
		@items = [Dog.new]
	end

	def describe
		puts "\n#{@description}"
	end

end

class Forest
	attr_reader :exits, :items

	def initialize
		@exits = {
			S: "garden"
				}
		@description = "You are in a forest."
		@items = [Mushroom.new]
	end

	def describe
		puts "\n#{@description}"

	end

end



class Player
	attr_accessor :current_room, :player_move

	def initialize
		@current_room = Hall.new
		@player_move = player_move
	end

	def describe_room
		puts "\n\n#{@current_room.describe}"
		puts "Available exits: #{@current_room.exits.keys}"
	end

	def get_input
		puts "\nWhat do you want to do?"
		@player_move = gets.chomp
	end

	def move
		this_room = @current_room.class
		if @player_move == "quit"
			puts "\nThanks for playing!"
		elsif @player_move == "search"
			search
		elsif @player_move == "take"
			if current_room.items[0].is_a? LightObject
				puts "You picked up the #{current_room.items[0].class.to_s.downcase}."
			else
				puts "\nYou can't pick that up!"
			end
		elsif @player_move == "N"
			if current_room.exits.has_key?(:N)
				new_room = current_room.exits[:N]
				room_type = eval(new_room.capitalize)
				@current_room = room_type.new
			else
				puts "\nYou bang into a wall."
			end
		elsif @player_move == "E"
			if current_room.exits.has_key?(:E)
				new_room = current_room.exits[:E]
				room_type = eval(new_room.capitalize)
				@current_room = room_type.new
			else
				puts "\nYou bang into a wall."
			end
		elsif @player_move == "S"
			if current_room.exits.has_key?(:S)
				new_room = current_room.exits[:S]
				room_type = eval(new_room.capitalize)
				@current_room = room_type.new
			else
				puts "\nYou bang into a wall."
			end
		elsif @player_move == "W"
			if current_room.exits.has_key?(:W)
				new_room = current_room.exits[:W]
				room_type = eval(new_room.capitalize)
				@current_room = room_type.new
			else
				puts "\nYou bang into a wall."
			end
		else
			puts "\nCommand not recognised."	
		end
	end

	def search
		@current_room.items.each do |item|
		puts "\nYou found a #{item.class.to_s.downcase}."
		end
	end

	def take
		puts "\nYou picked up the item."
	end

	def turn
		until @player_move == "quit" do
			describe_room
			get_input
			move
		end
	end

	
end 




player = Player.new
player.turn



