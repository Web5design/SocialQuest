class Skill < ActiveRecord::Base
  acts_as_api
  attr_accessible :name
  has_and_belongs_to_many :quests
  
  
  api_accessible :public do |template|
    template.add :name
    template.add :created_at
    template.add :updated_at
  end
end
