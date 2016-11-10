class Project < ApplicationRecord

	has_many :time_entries

	def completed?
	end

	def self.clean_old
		projects = Project.where("created_at < ?", 1.week.ago)
		projects.delete_all
	end
	
end
