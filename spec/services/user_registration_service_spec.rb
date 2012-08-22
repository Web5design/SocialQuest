require 'spec_helper'

describe UserRegistrationService do
  describe "#register!" do
    it "returns a array with status and an user_object" do
      subject = UserRegistrationService.register!("me@socialquest.org")
      subject.should be_kind_of Array
      subject[0].should == true
      subject[1].should be_kind_of User
    end
    
    it "returns the false if the user has errors" do
      subject = UserRegistrationService.register!("not_an_email")
      subject[0].should == false
      subject[1].should be_kind_of User
    end
  end
end