json.array!(@module4s) do |module4|
  json.extract! module4, :id, :name
  json.url module4_url(module4, format: :json)
end
