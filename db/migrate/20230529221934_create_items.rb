class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items, id: :string do |t|
      t.string :name, null: false
      t.decimal :conversion_factor, null: false
      t.decimal :size
      t.references :subcategory, null: false, foreign_key: true
      t.references :brand, null: true, foreign_key: true
      t.references :design, null: true, foreign_key: true
      t.decimal :minimum_stock, null: false

      t.timestamps
    end
  end
end
