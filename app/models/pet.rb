class Pet < ApplicationRecord
  CATEGORY = [:dog, :cat, :other]

  validates :name, presence: true
  validates :category, presence: true
  validates :birth, presence: true

  before_validation :capitalize

  def capitalize
    name.capitalize!
    category.capitalize!
  end
end
