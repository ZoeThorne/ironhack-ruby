require "pry"

class ShoppingCart
	attr_accessor :items 
	def initialize
		@items = []
	end

	def add_item_to_cart(item)
		@items.push(item)
	end

	def show
		#@number = @items.count(item)
		#@items_cost = @number * item.price
		grouped_items = @items.group_by{|x| x}.values
		grouped_items.each do |x|

			 
			 puts "#{x.size} x #{x[0].name} = #{x[0].price * x.size}"
		end
	end

	def cost
		total_price = 0
		@items.each do |item|
			total_price += item.price
		end
		puts "Total cost: #{total_price}"
	end

	def count_items(item)
		
		@number = @items.count(item)
		@items_cost = @number * item.price
	end

end

class Item
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		base_price = @price
	end
end

class Apple < Item
end

class Grape < Item
end

class Orange < Item
end


apple = Apple.new("apple", 10)
orange = Orange.new("orange", 5)
grape = Grape.new("grape", 15)
banana = Item.new("banana", 20)
watermelon = Item.new("watermelon", 50)




cart = ShoppingCart.new

cart.add_item_to_cart(apple)
cart.add_item_to_cart(banana)
cart.add_item_to_cart(banana)
cart.add_item_to_cart(grape)


cart.show
cart.cost
#1 apple: 10$
#2 bananas: 40$

#cart.cost = 50

# apples     10$
# oranges     5$
# grapes     15$
# banana     20$
# watermelon 50$

binding.pry