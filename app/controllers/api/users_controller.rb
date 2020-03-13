class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.new({
      username: params["username"],
      user_email: params["email"],
    })
    @user.save
    render "create.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params["username"] || @user.name
    @user.user_email = params["email"] || @user.user_email
    @user.save
    render "update.json.jb"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    @user.save
    render "destroy.json.jb"
  end
end
