json.array!(@moves) do |move|
  json.extract! move, :id, :username, :friend_username, :board_id, :direction
  json.url move_url(move, format: :json)
end
