class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
