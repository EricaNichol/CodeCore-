class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post), notice: "Post Saved"
    else
      flash[:alert] = "See Errors Below"
      render :new
    end
  end

  def show
    @comment = Comment.new
  end

  def index
    @posts = Post.all
  end


  def edit
  end

  def update
    if @post.update post_params
      redirect_to post_path(@post), notice: "Post Edited"
    else
      flash[:alert] = "Answer not updated"
    end
  end


  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
  params.require(:post).permit([:title, :body,  {tag_ids: []}])
  end

  def find_post
    @post = Post.find params[:id]
  end
end