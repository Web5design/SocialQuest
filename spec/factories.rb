require 'factory_girl'



FactoryGirl.define do
	factory :quest do 
		user
	  title "Plant a tree"
	  description "Guys in front of my house is a big hole, let's fill it up with plumb tree"
	  start_time Time.now
	  end_time Time.now + 1.day
	  type "Quest"
	end

	factory :user do 
	  email "vikas.narula@gmail.com"
	end

end