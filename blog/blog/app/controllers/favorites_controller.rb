class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post_params #finding the post-id, the specific id for a specific post

  def create
    favorite   = Favorite.new(post: @post, user: current_user)
    if favorite.save
      redirect_to @post, notice: "Favorited!"
    else
      redirect_to @post, alert: "Can't be favorited by you"
    end
  end

  def destroy
    favorite  = Favorite.find params[:id]
    if can? :destroy, favorite
      favorite.destroy
      redirect_to post_path(@post), notice: "Un-Faved" #back to the post showing the favorite option
    else #set CAN GEM
      redirect_to new_session_path, alert: "Please Sign-In"
    end
  end

  private

  def find_post_params
    @post = Post.find params[:post_id]
  end
end
