class Quest < ActiveRecord::Base
  acts_as_api
  
	# TODO belongs_to :owner 
  belongs_to :user
<<<<<<< HEAD
  has_one :type
  has_many :skills
  
  validates_presence_of :user_id
  attr_accessible :title, :description, :type_id, :start_time, :end_time, :user_id
  
  api_accessible :public do |template|
    template.add :title
    template.add :user_id
    template.add :type_id
    template.add :skill_id
    template.add :description
    template.add :start_time
    template.add :end_time
    template.add :created_at
    template.add :updated_at
  end
=======

  # TODO: This is for the change in the table
  # has_one :type
  
  validates_presence_of :user_id
  attr_accessible :title, :description, :type_id, :start_time, :end_time, :user_id, :latitude, :longitude
>>>>>>> afa2709c00d6ce5b54c122ae37887827447e4bad
end
