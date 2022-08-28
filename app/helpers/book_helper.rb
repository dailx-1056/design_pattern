module BookHelper
  def available_book(book)
    book_borrowed = book.borrowed.present? ? book.borrowed : 0

    book.quantity - book_borrowed
  end
end
