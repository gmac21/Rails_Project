json.array!(@bookings) do |booking|
  json.extract! booking, :id, :user_id, :screening_id, :booking_date, :bookingtime, :number_of_seats
  json.url booking_url(booking, format: :json)
end
