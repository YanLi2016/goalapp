class Mygoal < ActiveRecord::Base
	belongs_to :user

	has_many :tasks
	accepts_nested_attributes_for :tasks

	validates :name, presence: true, uniqueness: true 
end
