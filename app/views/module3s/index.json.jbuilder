json.array!(@module3s) do |module3|
  json.extract! module3, :id, :name
  json.url module3_url(module3, format: :json)
end
