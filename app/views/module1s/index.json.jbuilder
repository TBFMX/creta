json.array!(@module1s) do |module1|
  json.extract! module1, :id, :name
  json.url module1_url(module1, format: :json)
end
