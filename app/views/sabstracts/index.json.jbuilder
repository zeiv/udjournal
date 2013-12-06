json.array!(@sabstracts) do |sabstract|
  json.extract! sabstract, :id, :title, :content, :user_id, :departmnent_id
  json.url sabstract_url(sabstract, format: :json)
end
