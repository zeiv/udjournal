json.array!(@articles) do |article|
  json.extract! article, :title, :body, :published, :department_id
  json.url article_url(article, format: :json)
end
