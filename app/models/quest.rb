class Quest < ActiveRecord::Base
  #acts_as_api
  
	# TODO belongs_to :owner 
  belongs_to :user
  has_and_belongs_to_many :skills
  
  
  validates_presence_of :user_id
  attr_accessible :title, :description, :kind, :skill_id, :start_time, :end_time, :user_id, :latitude, :longitude
  
end
