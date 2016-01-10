json.array!(@picks) do |pick|
  json.extract! pick, :id, :caption
  json.url pick_url(pick, format: :json)
end
