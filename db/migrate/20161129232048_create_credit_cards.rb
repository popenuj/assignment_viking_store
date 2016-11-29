class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.date :expiration_date, null: false
      t.string :name, null: false
      t.string :number, null: false

      t.timestamps
    end
  end
end
