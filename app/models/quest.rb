class Quest < ActiveRecord::Base
	# TODO belongs_to :owner 
  belongs_to :user

  # TODO: This is for the change in the table
  # has_one :type
  
  validates_presence_of :user_id
  attr_accessible :title, :description, :type_id, :start_time, :end_time, :user_id, :latitude, :longitude
end
