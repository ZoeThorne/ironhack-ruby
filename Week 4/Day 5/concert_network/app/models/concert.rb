class Concert < ApplicationRecord
	validates_presence_of :artist, :venue, :city, :date, :price, :description
	validates :price, numericality: true
end
