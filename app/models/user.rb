class User < ApplicationRecord
  has_many :foods, inverse_of: :user
  has_many :activities

  validates :username, presence: true, uniqueness: true
  validates :height, :weight, presence: true, numericality: { greater_than: 0 }
end
