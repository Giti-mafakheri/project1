class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.create book_params
    redirect_to books_path
  end
  def destroy
  # Book.find(params[:title]).destroy
  # flash[:success] = "User destroyed."
  # redirect_to books_path
  raise hell
  end


  def index
    @book = Book.all
  end
  private
  def book_params
    params.require(:book).permit(:title , :genre_id)
  end
end
