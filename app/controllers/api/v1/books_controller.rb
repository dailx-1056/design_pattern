class Api::V1::BooksController < Api::ApiBaseController
  def index
    books = Book.all.decorate

    render_json books, each_serializer: Api::V1::BookSerializer
  end

  def show
    book = Book.first.decorate

    render_json book, serializer: Api::V1::BookSerializer
  end
end
