json.array!(@badgets) do |badget|
  json.extract! badget, :id, :name, :level
  json.url badget_url(badget, format: :json)
end
