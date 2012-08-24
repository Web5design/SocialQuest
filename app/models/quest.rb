class Quest < ActiveRecord::Base
  acts_as_api
  
	# TODO belongs_to :owner 
  belongs_to :user
  has_and_belongs_to_many :skills
  
  
  validates_presence_of :user_id
  attr_accessible :title, :description, :kind, :skill_id, :start_time, :end_time, :user_id, :latitude, :longitude
  
  api_accessible :public do |template|
    template.add :title
    template.add :user_id
    template.add :kind
    template.add :skill_id
    template.add :description
    template.add :start_time
    template.add :end_time
    template.add :created_at
    template.add :updated_at
  end
end
