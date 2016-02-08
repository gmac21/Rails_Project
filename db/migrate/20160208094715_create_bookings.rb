class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :screening_id
      t.date :booking_date
      t.time :bookingtime
      t.integer :number_of_seats

      t.timestamps null: false
    end
  end
end
