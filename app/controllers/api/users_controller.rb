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
end
