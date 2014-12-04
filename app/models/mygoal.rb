class Mygoal < ActiveRecord::Base
	belongs_to :user
	has_many :dailygoals
	

	validates :name, presence: true, uniqueness: true 
end
