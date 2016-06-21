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
    @posts = Post.all
  end

  def health
    @posts = Post.all
  end

  def tech
    @posts = Post.all
  end

  def science
    @posts = Post.all
  end

  def environment
    @posts = Post.all
  end

  def earth
    @posts = Post.all
  end

  def education
    @posts = Post.all
  end

  def society
    @posts = Post.all
  end

  def arts
    @posts = Post.all
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

