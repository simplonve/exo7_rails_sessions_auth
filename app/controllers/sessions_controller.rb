class SessionsController < ApplicationController
  def create
    if user = User.login(params[:email])
      session[:user_id] = user.id
    end
    redirect_to root_path, notice: "Connecté!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Déconnecté!"
  end
end
