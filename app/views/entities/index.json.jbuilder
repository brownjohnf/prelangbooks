json.array!(@entities) do |entity|
  json.extract! entity, :id, :type, :type_id, :universe_id, :name
  json.url entity_url(entity, format: :json)
end
