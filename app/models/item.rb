class Item < ApplicationRecord
  belongs_to :subcategory
  belongs_to :brand
  belongs_to :design
end
