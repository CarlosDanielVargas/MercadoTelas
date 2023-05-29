class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy
  has_many :items, through: :subcategories
  validates :name, presence: true, uniqueness: true
end
