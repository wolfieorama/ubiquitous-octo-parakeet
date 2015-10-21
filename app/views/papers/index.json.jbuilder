json.array!(@papers) do |paper|
  json.extract! paper, :id, :name, :date, :time, :students
  json.url paper_url(paper, format: :json)
end
