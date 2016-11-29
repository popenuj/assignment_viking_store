class CreateOrderedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :ordered_products do |t|
      t.integer :product_id, foreign_key: true, null: false
      t.integer :order_id, foreign_key: true, null: false
      t.float :price, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
