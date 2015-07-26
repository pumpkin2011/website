json.array!(@papers) do |paper|
  json.extract! paper, :id, :title, :description, :def_flg
  json.url paper_url(paper, format: :json)
end
