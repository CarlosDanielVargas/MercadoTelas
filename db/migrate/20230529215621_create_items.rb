class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :storing_format_units
      t.decimal :transfering_format_units
      t.decimal :conversion_factor
      t.decimal :size
      t.references :subcategory, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :design, null: false, foreign_key: true
      t.decimal :minimum_stock

      t.timestamps
    end
  end
end
