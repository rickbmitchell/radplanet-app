class PostsController < InheritedResources::Base

  def index
    @posts = Post.all
  end

  def show
    @post = get_post
  end

  def all
    @posts = Post.all
  end

  def space
    @post = get_category
  end

  private

    def post_params
      params.require(:post).permit(:name, :title, :content, :source, :created_at)
    end

    def get_post
      Post.find(params[:id])
    end

    # def get_category
    #   Post.find(params[:name])
    # end

end

