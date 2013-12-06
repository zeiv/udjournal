json.array!(@papers) do |paper|
  json.extract! paper, :id, :sabstract_id, :user_id, :department_id, :date_published
  json.url paper_url(paper, format: :json)
end
