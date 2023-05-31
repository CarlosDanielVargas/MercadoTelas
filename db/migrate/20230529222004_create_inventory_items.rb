class CreateInventoryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_items do |t|
      t.references :item, null: false, foreign_key: true
      t.decimal :storing_format_units, default: 0.0
      t.decimal :transferring_format_units, default: 0.0
      t.references :inventory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
