json.array!(@dailygoals) do |dailygoal|
  json.extract! dailygoal, :id, :done, :description, :comment
  json.url dailygoal_url(dailygoal, format: :json)
end
