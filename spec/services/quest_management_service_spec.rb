require 'spec_helper'

describe QuestManagementService do

before(:each) do
  @quest_attributes = FactoryGirl.attributes_for(:quest)
end

  describe "#create!" do
    it "returns true and a Quest Object" do
      success, user = UserRegistrationService.register!("me@socialquest.org")
      subject = QuestManagementService.create!(user, @quest_attributes)
      subject[0].should == true
      subject[1].should be_kind_of Quest
    end
    
    it "returns false and the quest object when creation failed" do
      subject = QuestManagementService.create!(nil, @quest_attributes)
      subject[0].should == false
      subject[1].should be_kind_of Quest
    end
  end
  describe "#update!" do  
    it "return true and updates the Quest Object" do


      #user = "me@socialquest.org"
      success, user = UserRegistrationService.register!("me@socialquest.org")
      success, quest = QuestManagementService.create!(user, @quest_attributes)

      subject = QuestManagementService.update!(quest, @quest_attributes)
      subject[0].should == true
      subject[1].should be_kind_of Quest
    end
    
    it "returns false and the Quest object when creation failed"
    
  end
end