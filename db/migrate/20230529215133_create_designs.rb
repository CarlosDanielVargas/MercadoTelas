class CreateDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :designs do |t|
      t.string :name

      t.timestamps
    end
  end
end
