json.array!(@universes) do |universe|
  json.extract! universe, :id, :author_id, :name, :string
  json.url universe_url(universe, format: :json)
end
