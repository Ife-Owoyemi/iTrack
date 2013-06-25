class ApplicationController < ActionController::Base
  respond_to :html, :json
  protect_from_forgery
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end
