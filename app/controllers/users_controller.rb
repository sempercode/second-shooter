class UsersController < ApplicationController
	def index
		@users = User.all
	end

	before_filter :authenticate_user!

	def show
		@users = User.find(params[:id])
	end
end
