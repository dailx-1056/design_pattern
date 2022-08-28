class BookBorrowsController < ApplicationController
  def create
    book = Book.find_by id: params[:book_id]
    book.update! borrowed: book.borrowed.to_i + 1 if book.present?

    redirect_to books_url
  end
end
