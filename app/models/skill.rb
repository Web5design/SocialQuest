class Skill < ActiveRecord::Base
  #acts_as_api
  attr_accessible :name
  has_and_belongs_to_many :quests

end
