class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :category_id, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.string :sku, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
