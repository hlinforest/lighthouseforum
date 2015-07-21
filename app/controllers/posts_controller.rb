class PostsController < ApplicationController

  def index
    @posts = Post.all
    # @posts = [
    #   {
    #     title: "TSM at MSI",
    #     author: "Dyrus",
    #     text: <<-eos.gsub(/\s+/, " ").strip
    #       I tried, but Santorin rarely helped gank top. so I gave up first blood almost every game
    #     eos
    #   },
    #   {
    #     title: "C9 at regional final",
    #     author: "A C9 fan",
    #     text: <<-eos.gsub(/\s+/, " ").strip
    #       C9 is the true heart and soul of the North American LCS, they have the dedication, determination,
    #       and the drive to bring NA back to its former glory. If they make it to the regional they have a shot at
    #       beating every team in the tournament and make it to worlds as the 3rd seed.
    #     eos
    #   },
    #   {
    #     title: "Fnatic vs SKT rematch at worlds",
    #     author: "an EU fan",
    #     text: <<-eos.gsub(/\s+/, " ").strip
    #       Even though Fnatic lost to SKT in game 5 at MSI, this is the furthest an EU team has been in attempting to take down the No1 south korean team and for that I am proud as an EU fan.
    #     eos
    #   }
    # ]
  end

  def show
    @post = Post.find(params[:id])
    # posts = [
    #   {
    #     title: "TSM at MSI",
    #     author: "Dyrus",
    #     text: <<-eos.gsub(/\s+/, " ").strip
    #       I tried, but Santorin rarely helped gank top. so I gave up first blood almost every game
    #     eos
    #   },
    #   {
    #     title: "C9 at regional final",
    #     author: "A C9 fan",
    #     text: <<-eos.gsub(/\s+/, " ").strip
    #       C9 is the true heart and soul of the North American LCS, they have the dedication, determination,
    #       and the drive to bring NA back to its former glory. If they make it to the regional they have a shot at
    #       beating every team in the tournament and make it to worlds as the 3rd seed.
    #     eos
    #   },
    #   {
    #     title: "Fnatic vs SKT rematch at worlds",
    #     author: "an EU fan",
    #     text: <<-eos.gsub(/\s+/, " ").strip
    #       Even though Fnatic lost to SKT in game 5 at MSI, this is the furthest an EU team has been in attempting to take down the No1 south korean team and for that I am proud as an EU fan.
    #     eos
    #   }
    # ]
    # @post = posts[params[:id].to_i]
  end

  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    # @post = Post.new(
    #   title: params[:post][:title],
    #   author: params[:post][:author],
    #   text: params[:post][:text]
    # )
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  protected

  def post_params
    params.require(:post).permit(:title, :author, :text)
  end
  

  # def post0
  #   @post = {
  #       title: "TSM at MSI",
  #       author: "Dyrus",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         I tried, but Santorin rarely helped gank top. so I gave up first blood almost every game
  #       eos
  #     }
  # end

  # def post1
  #   @post = {
  #     title: "C9 at regional final",
  #       author: "A C9 fan",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         C9 is the true heart and soul of the North American LCS, they have the dedication, determination,
  #         and the drive to bring NA back to its former glory. If they make it to the regional they have a shot at
  #         beating every team in the tournament and make it to worlds as the 3rd seed.
  #       eos
  #   }

  # end

  # def post2
  #   @post = {
  #      title: "Fnatic vs SKT rematch at worlds",
  #       author: "an EU fan",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         Even though Fnatic lost to SKT in game 5 at MSI, this is the furthest an EU team has been in attempting to take down the No1 south korean team and for that I am proud as an EU fan.
  #       eos
  #   }
  # end
end