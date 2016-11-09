class ProjectsController < ApplicationController

  def index
  	@projects = Project.order(created_at: :desc) #sorts the projects
  						.limit(10)	# returns only the first 10
  render 'index'
  end

  def show
  	@project = Project.find_by(id: params[:id])
  	unless @project
  		render 'no_projects_found'
  	end
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(name: params[:project][:name],
  							description: params[:project][:description])
  	@project.save

  	redirect_to project_path(@project.id)
  end

end
