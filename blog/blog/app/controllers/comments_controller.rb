class CommentsController < ApplicationController
  before_action :authenticate_user!, except:[:show, :index]

  def create
    @comment      = Comment.new comment_params
    @comment.user = current_user
    @post         = Post.find params[:post_id]
    @comment.post = @post
    respond_to do |format|
    if @comment.save
      CommentsMailer.delay(run_at: 5.minutes.from_now).notify_post_owner(@comment)
      format.html { redirect_to post_path(@post), notice: "Comment Created" }
      format.js { render :create_success }
    else
      flash[:alert] = "Comment was NOT created"
      format.html { render '/posts/show' }
      format.js { render :create_failure}
      # create_success links to the respective folder in the comments folder, create_success.js.erb
    end
    end
  end

  def destroy
    @comment    = Comment.find params[:id]
    @post       = Post.find params[:post_id]
    @comment.destroy
    respond_to do |format|
    format.html { redirect_to post_path(@post), notice: "Answer Deleted" }
    format.js { render }
    end
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

  def index
  end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end


end
