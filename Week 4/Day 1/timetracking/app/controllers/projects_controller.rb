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
  	@project = Project.new project_params # Protected method
  	if @project.save
  		redirect_to project_path(@project.id), notice: 'The project was created'
  	else
  		@errors = @project.errors.full_messages
  		render 'new'
  	end
  end

  def edit
  	@project = Project.find_by(id: params[:id])
  	# render 'new' # Form will intelligently change to update! Or use partial
  end

  def update # Don't forget to allow attributes with the protected method
  	@project = Project.find_by(id: params[:id])
  	if @project.update project_params
  		redirect_to project_path(@project.id), notice: 'The project was updated'
  	else
  		@errors = @project.errors.full_messages
  		render 'new'
  	end
  end

  def destroy 
  	@project = Project.find_by(id: params[:id])
  	
  	@project.destroy
  	redirect_to projects_path, notice: 'The project was deleted'
  end



  protected

  def project_params
  	params.require(:project).permit(:name, :description)
  end



end
