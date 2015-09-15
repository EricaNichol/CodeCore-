class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post_params

  def create
    like  = Like.new( post: @post,
                      user: current_user)

    respond_to do |format|
      if like.save
        format.html { redirect_to @post,
                      notice: "Liked!" }
        format.js   { render }
      else
        format.html { redirect_to @post,
                      alert: "Sorry, can't like" }
        format.js   { render } #renders LIKES.html.erb
      end
    end
  end

  def destroy
    like    = Like.find params[:id]
    respond_to do |format|
      if can? :destroy, like
        like.destroy
        format.html { redirect_to post_path(@post), notice: "Unliked" }
        format.js   { render }
      else
        format.html { redirect_to new_session_path, alert: "Please Sign In" }
        format.js   { render }
      end
    end
  end

  private

  def find_post_params
    @post = Post.find params[:post_id]
  end
end
