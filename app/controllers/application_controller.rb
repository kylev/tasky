class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
    # TODOkylev Actually write the filter to deny access and redirect.
    redirect_to :action => 'pages#login' if session[:user_id].nil?
  end
end
