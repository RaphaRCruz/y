class Pet < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :category, presence: true
  validates :birth, presence: true

  before_validation :capitalize

  def capitalize
    name.capitalize!
    category.capitalize!
  end
end
