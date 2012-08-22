class Quest < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :user_id
  attr_accessible :title, :description, :type, :start_time, :end_time
end
