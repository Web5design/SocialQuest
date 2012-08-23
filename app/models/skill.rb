class Skill < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :skill
  attr_accessible :skill
end
