class Item < ApplicationRecord
  belongs_to :subcategory
  belongs_to :brand
  belongs_to :design
  has_many :inventory_items
  has_many :inventories, through: :inventory_items
  validates :name, presence: true, uniqueness: true
  validates :minimum_stock, presence: true, numericality: { greater_than: 0 }
  validates :conversion_factor, presence: true, numericality: { greater_than: 0 }
  validates :size, numericality: { greater_than: 0 }, allow_nil: true
end
