class Book < ApplicationRecord
  CREATE_PARAMS = %i(title desc quantity)

  validates :borrowed, numericality: { less_than_or_equal_to: :quantity, allow_blank: true }
  validates :borrowed, :quantity, numericality: { only_integer: true, allow_blank: true }

  scope :available_books, ->{Books::AvailableBookQuery.run}
end
