require 'spec_helper'

describe QuestManagementService do
  describe "#create!" do
    it "returns true and a Quest Object" do
      success, user = UserRegistrationService.register!("me@socialquest.org")
      subject = QuestManagementService.create!(user, {})
      subject[0].should == true
      subject[1].should be_kind_of Quest
    end
    
    it "returns false and the quest object when creation failed" do
      subject = QuestManagementService.create!(nil, {})
      subject[0].should == false
      subject[1].should be_kind_of Quest
    end
  end
end