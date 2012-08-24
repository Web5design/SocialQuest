FactoryGirl.define do

  factory :user do 
    sequence(:email) {|n|
       "sq#{n}@hack2learn.org"}
  end
 end