FactoryGirl.define do

  factory :user do 
    sequence(:email) {|n|
       "person#{n}z@socialquest.org"}
  end
 end