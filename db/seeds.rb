# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


FactoryGirl.create_list(:quest, 3)
FactoryGirl.create_list(:user, 3)

FactoryGirl.create(:type, name: 'Shout')
FactoryGirl.create(:type, name: 'Quest')
FactoryGirl.create(:type, name: 'Project')
FactoryGirl.create(:type, name: 'Meeting')
FactoryGirl.create(:type, name: 'Background Story')
FactoryGirl.create(:type, name: 'Organization')

FactoryGirl.create(:skill, name: 'Reparing')
FactoryGirl.create(:skill, name: 'Engineering')
FactoryGirl.create(:skill, name: 'Gardening')
FactoryGirl.create(:skill, name: 'Cooking')
FactoryGirl.create(:skill, name: 'Carpentry')
FactoryGirl.create(:skill, name: 'Joking')