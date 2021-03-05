class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, status: :accepted
  end
  def show
    @user = User.find(params[:id])
    render json: @user, include: :cards, status: :accepted
  end
  def create
    @user = User.create(username: params[:username], password: params[:password])
    render json: @user, status: :created
  end
  def update
    @user = User.find(params[:id])
    @user.update(username: params[:username], password: params[:password])
    render json: @user, status: :accepted
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: @user, status: :no_content
  end
end
