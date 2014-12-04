json.array!(@mygoals) do |mygoal|
  json.extract! mygoal, :id, :name, :start, :finish, :days
  json.url mygoal_url(mygoal, format: :json)
end
