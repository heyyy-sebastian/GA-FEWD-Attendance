class UsersController < ApplicationController
  def new
  end

private
	def user_params
		params
		.require(:user)
		.permit(:password)
	end

end #end Users class definition
