# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


FactoryGirl.create_list(:quest, 3)
#FactoryGirl.create_list(:user, 3)

FactoryGirl.create(:quest, title: 'Test Quest', description: 'Quest description', kind: 'shout', skill_id: 1, start_time: DateTime.now, end_time: DateTime.now + 1.day, latitude: '1.2345', longitude: '7.3556')

FactoryGirl.create(:skill, name: 'Reparing')
FactoryGirl.create(:skill, name: 'Engineering')
FactoryGirl.create(:skill, name: 'Gardening')
FactoryGirl.create(:skill, name: 'Cooking')
FactoryGirl.create(:skill, name: 'Carpentry')
FactoryGirl.create(:skill, name: 'Joking')