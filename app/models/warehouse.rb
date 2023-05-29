class Warehouse < ApplicationRecord
  has_one :inventory, dependent: :destroy
  has_many :inventory_items
  has_many :items, through: :inventory_items
  validates :name, presence: true, uniqueness: true
end
