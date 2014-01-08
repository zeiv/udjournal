class SessionsController < ApplicationController
	skip_before_filter :verify_authenticity_token
  def new
  end

  def create
  	auth_hash = request.env['omniauth.auth']

  	@authentication = Authentication.find_by_provider_and_uid(auth_hash['provider'], auth_hash['uid'])
  	if @authentication
  		flash[:notice] = "Welcome back #{@authentication.user.name}!"
  		@user = @authentication.user
      redirect_to root_url
  	else
  		user = User.find_or_initialize_by_email name: auth_hash['info']['name'], email: auth_hash['info']['email']
  		user.authentications.build provider: auth_hash['provider'], uid: auth_hash['uid']
  		user.save
  		@user = user
  		flash[:notice] = "Hi #{user.name}!  Thanks for signing up."
      redirect_to root_url
  	end
  	session[:user_id] = @user.id
  end

  def failure
  	flash[:notice] = 'There was a problem logging you in.  Please try again later.'
  	redirect_to root_url
  end

  def destroy
  	session[:user_id] = nil
  	flash[:notice] = 'You have successfuly logged out.'
  	redirect_to root_url
  end
end
