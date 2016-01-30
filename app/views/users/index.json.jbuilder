json.array!(@users) do |user|
  json.extract! user, :id, :username, :xpos, :ypos
  json.url user_url(user, format: :json)
end
