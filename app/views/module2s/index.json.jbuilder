json.array!(@module2s) do |module2|
  json.extract! module2, :id, :name
  json.url module2_url(module2, format: :json)
end
