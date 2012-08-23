class Type < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :name
  attr_accessible :name
end
