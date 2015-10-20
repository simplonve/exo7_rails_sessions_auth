class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def create
    @user = User.new
    @user.email = params["email"]
    @user.save
    redirect_to root_path
  end
end
