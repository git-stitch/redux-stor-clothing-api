class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = find_user
    render json: @user
  end

  private

  def user_params
    params.permit(:email)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
