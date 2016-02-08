json.array!(@users) do |user|
  json.extract! user, :id, :name, :Date_of_birth, :email, :user_name, :password_digest
  json.url user_url(user, format: :json)
end
