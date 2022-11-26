class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :payments

  validates :name, presence: true, length: { minimum: 3 }
  validates :user_id, presence: true, numericality: { greater_than: 0 }
end
