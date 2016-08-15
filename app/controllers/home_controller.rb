class HomeController < ApplicationController
	include Pundit
	protect_from_forgery with: :exception

	before_action :authenticate_user!, only: :static
	after_action :verify_authorized, only: [:index, :static]
	rescue_from NotAuthorizedError, with: :user_not_authorized

  def index
  	authorize :home, :index?
  end

  def static
  	authorize :home, :static?
  end

private

  def user_not_authorized
  	flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
