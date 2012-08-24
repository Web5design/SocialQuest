require 'spec_helper'

describe UserRepository do
  describe "#find" do
    it "returns true and the user when user is found" do
      user = double("user")
      User.stub(:find).with(1) { user }
      subject = UserRepository.find(1) 
      subject[0].should == true
      subject[1].should == user
    end
    
    it "returns false and nil when no user is found" do
      subject = UserRepository.find(1000)
      subject[0].should == false
      subject[1].should == nil
    end
  end
  
  describe "#find_or_register_by_email" do
    it "registers a new user when no user found" do
      subject = UserRepository.find_or_register_by_email("me@socialquest.org")
      subject[0].should == true
      subject[1].should be_kind_of User
    end
    
    it "returns false and a new user object when registration fails" do
      subject = UserRepository.find_or_register_by_email("not_an_email")
      subject[0].should == false
      subject[1].should be_kind_of User
    end
  end
end