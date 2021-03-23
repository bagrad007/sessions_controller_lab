class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    if params[:name].nil? || params[:name] == ""
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    # binding.pry
    if session[:name]
      session.delete :name
    end
  end
end
