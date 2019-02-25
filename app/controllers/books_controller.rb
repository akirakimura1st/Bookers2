class BooksController < ApplicationController
	before_action :authenticate_user!

	def show
		@Book = Book.find(params[:id])
		@book = Book.new
	end

	def index
		@Books = Book.all
		@book = Book.new
	end

	def new
		@book = Book.new
	end

	def edit
		@book = Book.find(params[:id])
	end

	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
	if  @book.save
		redirect_to book_path(@book)
	else
		@books = Book.all

		render "index"
	end
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		redirect_to book_path(@book)
	end

	def destroy
		@user = current_user.id
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to user_path(@user)
	end

	private
	def book_params
		params.require(:book).permit(:title, :opinion)
	end

end
