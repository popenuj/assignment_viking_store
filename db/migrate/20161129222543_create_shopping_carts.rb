class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :customer_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
