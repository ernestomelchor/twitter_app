class Api::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render "index.json.jb"
  end

  def create
    @tweet = Tweet.new({
      text: params["text"],
      user_id: params["user_id"],
    })
    @tweet.save
    render "create.json.jb"
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.text = params["text"] || @user.name
    @tweet.save
    render "update.json.jb"
  end

  def destroy
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.destroy
    @tweet.save
    render "destroy.json.jb"
  end
end
