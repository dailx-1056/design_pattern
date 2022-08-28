class Book < ApplicationRecord
  CREATE_PARAMS = %i(title desc quantity)

  validates :borrowed, numericality: { less_than_or_equal_to: :quantity }
  validates :borrowed, :quantity, numericality: { only_integer: true }
end
