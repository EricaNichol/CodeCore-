class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post_params

  def create
    like = Like.new(post: @post, user: current_user)
    #2 params no need for "form!"
    if like.save
      redirect_to @post, notice: "Liked!"
    else
      redirect_to @post, alert: "Sorry, can't like"
    end
  end

  def destroy
    like    = Like.find params[:id]
    if can? :destroy, like
      like.destroy
      redirect_to post_path(@post), notice: "Unliked"
    else
      redirect_to new_session_path, alert: "Please Sign In"
    end
  end

  private

  def find_post_params
    @post = Post.find params[:post_id]
  end
end
