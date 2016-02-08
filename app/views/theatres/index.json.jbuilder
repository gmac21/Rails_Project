json.array!(@theatres) do |theatre|
  json.extract! theatre, :id, :name, :address, :cost, :phone_number, :email
  json.url theatre_url(theatre, format: :json)
end
