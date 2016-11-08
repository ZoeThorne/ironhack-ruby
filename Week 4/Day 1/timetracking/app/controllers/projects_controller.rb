class ProjectsController < ApplicationController

  def index
  	@projects = Project.order(created_at: :desc) #sorts the projects
  						.limit(10)	# returns only the first 10
  render 'index'
  end

end
