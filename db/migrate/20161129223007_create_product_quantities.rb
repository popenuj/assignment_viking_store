class CreateProductQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :product_quantities do |t|
      t.integer :shopping_cart_id, foreign_key: true, null: false
      t.integer :product_id, foreign_key: true, null: false
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
