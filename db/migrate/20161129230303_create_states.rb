class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.integer :country_id, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
