class Mygoal < ActiveRecord::Base
	belongs_to :user
	has_may :dailygoal
	validates :name, presence: true, uniqueness: true 
end
