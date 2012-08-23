class Skill < ActiveRecord::Base
  acts_as_api
  
  belongs_to :quest
  
  # attr_accessible :title, :body
  validates_presence_of :skill
  attr_accessible :skill
  
  api_accessible :public do |template|
    template.add :id
    template.add :skill
  end
end
