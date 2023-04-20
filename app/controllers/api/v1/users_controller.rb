class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
  
    if User.exists?(email: @user.email)
      return render json: { error: 'Email already taken' }, status: :unprocessable_entity
    end
  
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
