class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @tags = @post.tags.split(",") unless @post.tags.nil?
    # Build a comment object to show on post
    @post.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    respond_to do |format|
      if @post.save
        format.html {redirect_to post_path(@post), notice: "Post has been created successfully"}
      else
        format.html {render action: "new"}
      end
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update_attributes(post_params)
        format.html {redirect_to post_path(@post), notice: "Post has been updated successfully."}
      else
        format.html {render action: "edit"}
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.comments.destroy
    @post.destroy
    redirect_to posts_path, notice: "Post has been deleted successfully."
  end

  def post_comment
    @post = Post.find(params[:post][:id])
p "Params are #{params}"
    respond_to do |format|
      if @post.update_attributes(post_params)
        @post.comments.build
        format.js {render "show_comments.js"}
      end
    end
  end

  private
  def post_params
    params.require(:post).permit(:id, :title, :description, :body, :tags, comments_attributes: [:description, :user_id])
  end

end
