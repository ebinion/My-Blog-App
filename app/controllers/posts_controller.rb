class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find params[:id]
  end

  def edit
  	@post = Post.find params[:id]
  end

  def update
  	@post = Post.find params[:id]

  	@post.update_attributes params[:post]

  	@post.save

  	redirect_to posts_path(params[:id])
  end

  def upload
    # @post = Post.find params[:id]

    uploaded_io = params[:post][:thumbnail]

    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
      file.write(uploaded_io.read)
    end

    # @post.thumbnail = Rails.root.join('public', 'uploads', uploaded_io.original_filename) + uploaded_io.original_filename

    # @post.save
  end
end
