class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create! book_params

    redirect_to action: :index
  end

  private

  def book_params
    params.require(:book).permit Book::CREATE_PARAMS
  end
end
