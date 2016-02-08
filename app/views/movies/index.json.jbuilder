json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :director, :genre, :release_date, :film_lenght, :trailer
  json.url movie_url(movie, format: :json)
end
