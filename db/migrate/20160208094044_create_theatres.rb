class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :address
      t.integer :cost
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
