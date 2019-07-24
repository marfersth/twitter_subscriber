class SessionsController < ApplicationController
  def create
    render json: request.env['omniauth.auth'].to_json
    # user = User.from_omniauth(env['omniauth.auth'])
    # session[:user_id] = user.id
    # redirect_to root_url, notice: "Signed in."
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out."
  end

  def index
  end
end
