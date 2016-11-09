class UsersController < ApplicationController

	def index
		@users = User.order(name: :asc)
					.limit(10)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
		@user.save

		redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find_by(id: params[:id])
		unless @user
			render "no_user_found"
		end
	end

end
