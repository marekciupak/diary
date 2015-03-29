json.array!(@divisions) do |division|
  json.extract! division, :id, :year, :letter
  json.url division_url(division, format: :json)
end
