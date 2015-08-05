class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    before_action :authenticate  # if they try to go to anywhere in the website, except for user actions, there redirected to sign_in page

  private
  def authenticate
    if !session[:user]
      redirect_to "/sign_in"
    end
  end
end
