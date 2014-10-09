json.array!(@editions) do |edition|
  json.extract! edition, :id, :author_id, :name, :publisher_id, :universe_id, :title, :binding, :pages, :language
  json.url edition_url(edition, format: :json)
end
