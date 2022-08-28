class BookDecorator < Draper::Decorator
  delegate_all

  def available
    book_borrowed = borrowed.present? ? borrowed : 0

    quantity - book_borrowed
  end
end
