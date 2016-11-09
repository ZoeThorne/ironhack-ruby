class TimeEntriesController < ApplicationController

	def index
		@project = Project.find(params[:project_id])
		@entries = @project.time_entries
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = @project.time_entries.new
	end

	def create
		@project = Project.find(params[:project_id])
		@entry = @project.time_entries.new(
			hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date])

		if @entry.save
			redirect_to "/projects/#{@project.id}/time_entries"
		else
			render 'new'
		end
	end

end
