json.extract! item, :id, :name, :conversion_factor, :size, :subcategory_id, :brand_id, :design_id, :minimum_stock, :created_at, :updated_at
json.url item_url(item, format: :json)
