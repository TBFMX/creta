json.array!(@module5s) do |module5|
  json.extract! module5, :id, :name
  json.url module5_url(module5, format: :json)
end
