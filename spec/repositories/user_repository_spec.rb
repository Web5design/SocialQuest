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
      subject = UserRepository.find(1) 
      subject[0].should == false
      subject[1].should == nil
    end
  end
end