class Type < ActiveRecord::Base
  acts_as_api
  
  belongs_to :quest
  
  # attr_accessible :title, :body
  validates_presence_of :name
  attr_accessible :name
  
  api_accessible :public do |template|
    template.add :id
    template.add :name
  end
end
