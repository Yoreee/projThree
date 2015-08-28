class SessionsController < ApplicationController

	def index

	end

	def new
	
	end

	def create
		user = User.find_by({email: params[:email]})

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			# redirect to landing page with logic for sessions?
			redirect_to root_path
		else
			# figure out what happens with invalid login info
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end