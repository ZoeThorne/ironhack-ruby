class Ingredient < ApplicationRecord
	has_many :sandwichIngredients
	has_many :sandwiches, through: :sandwichIngredients
end
