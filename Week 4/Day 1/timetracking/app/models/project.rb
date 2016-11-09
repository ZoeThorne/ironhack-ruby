class Project < ApplicationRecord

	has_many :time_entries

	def completed?
	end
	
end
