class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :type, null: false
      t.string :street, null: false
      t.string :zip_code, null: false
      t.boolean :default, null: false
      t.string :city, null: false
      t.integer :country_id, null: false
      t.integer :state_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
