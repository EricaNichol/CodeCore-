class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post_params #finding the post-id, the specific id for a specific post

  def create
    favorite   = Favorite.new(post: @post,
                              user: current_user)

    respond_to do |format|
      if favorite.save
        format.html { redirect_to @post, notice: "Favorited!" }
        format.js   { render }
      else
        format.html { redirect_to @post,
                      alert: "Can't be favorited by you" }
        format.js   { render }
      end
    end
  end

  def destroy
    favorite  = Favorite.find params[:id]
    respond_to do |format|
      if can? :destroy, favorite
        favorite.destroy
        format.html { redirect_to post_path(@post),
                      notice:  "Un-Faved" }
        format.js   { render }
                      #back to the post showing the favorite option
      else            #set CAN GEM
        format.html { redirect_to new_session_path,
                      alert: "Please Sign-In" }
        format.js   { render }
      end
    end
  end

  private

  def find_post_params
    @post = Post.find params[:post_id]
  end
end
