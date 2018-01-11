class PostsController < ApplicationController
  http_basic_authenticate_with name: "tech-fleet", password: "secret", except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
  @post = Post.find(params[:id])
  end

  def create
  @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html {redirect_to(@post, :notice => 'Post was successfully updated.')}
        format.json {head :no_content}
      else
        format.html {render :action => "edit"}
        format.json {render :json => @post.errors, :status => :unprocessable_entity}
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html {redirect_to post_url}
      format.json {head :no_content}
    end
  end

private
  def post_params
    params.require(:post).permit(:restaurant, :review)
  end
end
