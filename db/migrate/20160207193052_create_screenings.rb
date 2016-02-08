class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.integer :cinema_id
      t.integer :movie_id
      t.string :seats
      t.string :handicap_accesibility
      t.string :scree_size
      t.date :date_start_showing
      t.date :date_end_showing
      t.date :time_showing

      t.timestamps null: false
    end
  end
end
