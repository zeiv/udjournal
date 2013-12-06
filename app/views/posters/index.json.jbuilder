json.array!(@posters) do |poster|
  json.extract! poster, :id, :user_id, :department_id, :sabstract_id
  json.url poster_url(poster, format: :json)
end
