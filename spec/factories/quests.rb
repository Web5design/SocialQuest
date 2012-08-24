FactoryGirl.define do
  factory :quest do 
    user
    kind "shout"
    title "Plant a tree"
    description "Guys in front of my house is a big hole, let's fill it up with plumb tree"
    start_time Time.now
    end_time Time.now + 1.day
    latitude 52.500556
    longitude 13.398889
    skill_id 1
  end
 end