class SessionsController < ApplicationController

	# sessions are the way the browser tracks me
	# we want to manage them in our app
	# sessions controller deals with stuff


	def new
		# log in form

	end

	def create
			# do the log in

			# i want to find the username and password type in

			@username = params[:session][:username]
			@password = params[:session][:password]

			# then I want to see if there's a user with that username

			@user = User.find_by_username(@username)

			# if there is, check their password as well

		if @user.present? and @user.authenticate(@password)

			# if it matches, give them the session

			session[:user_id] = @user.id
			flash[:success] = "You're logged in"
			redirect_to root_path

		else

			flash[:error] = "Wrong username/password"
			# if not, show the new page
			render "new"
		end

		
	end


	def destroy
			# a.k.a log out

			reset_session
			flash[:success] = "You've logged out"
			redirect_to root_path

	end



end
