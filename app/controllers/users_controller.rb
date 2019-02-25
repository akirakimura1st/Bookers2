class UsersController < ApplicationController

  before_action :authenticate_user!, only:[:index, :edit, :show, :update]

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
    @books = Book.all
  end

  def edit
    @user = current_user
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    # @books = Book.all
    # @books = @books.user
  end

  def top
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)

end
end