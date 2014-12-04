class Dailygoal < ActiveRecord::Base
	belongs_to :mygoal, dependent: :destroy
end
