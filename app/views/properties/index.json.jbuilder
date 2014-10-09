json.array!(@properties) do |property|
  json.extract! property, :id, :type, :type_id, :key_name, :value
  json.url property_url(property, format: :json)
end
