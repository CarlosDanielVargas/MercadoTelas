class Inventory < ApplicationRecord
  belongs_to :warehouse
  has_many :inventory_items
end
