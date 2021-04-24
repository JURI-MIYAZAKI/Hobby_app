class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_show_path(@user)
    else
      render :new
    end
  end

#def create
   # @user = User.new(user_params)
    #if @user.save
      #redirect_to root_path
    #else
      #render :new
    #end
  #end

  def show
    @user = User.find_by(id:params[:id])
    @post = Post.all
    @post = Post.where.not(del_flag: 1)
    @category = Category.all
  end


  private
  def user_params
    params.require(:user).permit(:name, :email , :password , :pasword_confirmation , :twitter_account , :image_name)
  end
  
end
