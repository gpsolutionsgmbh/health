class Activity < ApplicationRecord
  belongs_to :user
  enum nutrion: %i(c d3 iron)

  validates :nutrion, presence: true, inclusion: { in: nutrions }
  validates :date, presence: true, uniqueness: { scope: %i(user_id nutrion) }
  validates :amount, presence: true,
                     numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3, only_integer: true }
end
