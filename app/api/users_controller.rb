class Api::UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
