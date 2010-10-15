class PagesController < ApplicationController
  def login
    @title = 'Login'
    if request.method == 'POST'
      session[:user] = User.authenticate(params[:email], params[:password])
      redirect_to :action => 'todos#index' unless session[:user].nil?
    end
  end

end
