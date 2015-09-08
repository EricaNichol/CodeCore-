class CommentsController < ApplicationController
  before_action :authenticate_user!, except:[:show, :index]

  def create
    @comment      = Comment.new comment_params
    @comment.user = current_user
    @post         = Post.find params[:post_id]
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post), notice: "Comment Created"
    else
      flash[:alert] = "Comment was NOT created"
      render '/posts/show'
    end
  end

  def destroy
    @comment    = Comment.find params[:id]
    @post       = Post.find params[:post_id]
    @comment.destroy
    redirect_to post_path(@post), notice: "Answer Deleted"
  end

  def edit
    @post       = Post.find params[:post_id]
    @comment    = Comment.find params[:id]
  end

  def update
    @comment    = Comment.find params[:id]
    @post       = Post.find params[:post_id]
    if @comment.update comment_params
      redirect_to post_path(@post), notice: "Comment Updated"
    else
      flash[:alert] = "Error"
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end


end
