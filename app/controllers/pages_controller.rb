class PagesController < ApplicationController
  def login
    @title = 'Login'
  end

  def create
    user = User.authenticate(params[:page][:email],
                             params[:page][:password])
    if user.nil?
      flash.now[:error] = "Sucky"
      @title = 'Login'
      render 'login'
    else
      session[:user_id] = user.id
      # redirect_to :action => 'todos#index' unless session[:user].nil?
      redirect_to "/todos"
    end
  end
end
