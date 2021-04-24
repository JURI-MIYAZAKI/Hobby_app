class PostController < ApplicationController
  def TOP
   @post = Post.all
    @post = Post.where.not(del_flag: 1)
    @category = Category.all
    end
    #※del_flagが1のやつは表示しない！

  def new
    @post = Post.new
    @category = Category.all
  end

  
    def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
  end
end


  def show
    @post = Post.find_by(id:params[:id])
    @category = Category.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
    @categories = Category.all
  end

  def update
    @post = Post.find_by(id:params[:id])
    if @post.update_attributes(post_params)
      redirect_to root_path
    end
  end

  def delete
    @post = Post.find_by(id:params[:id])
    if @post.del_flag = 1
      @post.save
      redirect_to root_path
  end
end

def search
  @post = Post.where(['title LIKE ? OR content LIKE ?', "%#{params[:search]}%","%#{params[:search]}%"])
  
  
end


def category
    @post = Post.where(category_id:params[:id]).where.not(del_flag: 1)
    @category = Category.find_by(id:params[:id])
end


  private
  def post_params
    params.require(:post).permit(:title , :content , :category_id)
  end

  

end
