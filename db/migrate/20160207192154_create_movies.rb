class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :genre
      t.date :release_date
      t.timestamp :film_lenght
      t.string :trailer

      t.timestamps null: false
    end
  end
end
