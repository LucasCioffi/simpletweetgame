json.array!(@boards) do |board|
  json.extract! board, :id, :username, :title
  json.url board_url(board, format: :json)
end
