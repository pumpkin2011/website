json.array!(@console_desks) do |console_desk|
  json.extract! console_desk, :id
  json.url console_desk_url(console_desk, format: :json)
end
