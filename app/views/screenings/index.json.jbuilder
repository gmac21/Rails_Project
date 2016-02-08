json.array!(@screenings) do |screening|
  json.extract! screening, :id, :cinema_id, :movie_id, :seats, :handicap_accesibility, :scree_size, :date_start_showing, :date_end_showing, :time_showing
  json.url screening_url(screening, format: :json)
end
