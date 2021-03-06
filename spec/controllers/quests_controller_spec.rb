require 'spec_helper'

describe QuestsController do
  def valid_session
    {}
  end

	describe "new with valid quest data" do

		before(:each) do
			@test_user = User.create!(:email => "vikas.narula@gmail.com")
			raise "got an error" if @test_user.nil?
		end

	  it "should be 201 created" do
	  	quest_attributes = FactoryGirl.attributes_for(:quest)

      expect {
        request.env["HTTP_ACCEPT"] = "application/json"
        post :create, quest_attributes, {'Content-Type'=>'application/json'}
        response.code.should eq("201")
      }.to change(Quest, :count).by(+1)

      created_quest = Quest.order("created_at ASC").last

			quest_attributes.each { |key,value|
				# FIXME better check for date format, but for now just comment them out
				if !key.match(/.+time/)
					created_quest[key].should == value
				end
			}
	  end
    
    it "should redirect to the quest show action when quest created successfully" do
      quest_attributes = FactoryGirl.attributes_for(:quest)
      
      post :create, quest_attributes
      response.location.should =~ /#{quest_path(Quest.order("created_at ASC").last)}/
    end

	end
end