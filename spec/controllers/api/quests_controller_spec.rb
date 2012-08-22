# encoding: UTF-8
require 'spec_helper'

describe Api::QuestsController do
  describe "#create" do
    it "creates a new quest and returns it" do
      json = { :title => "foo", :description => "bar" }.to_json
      request.env['CONTENT_TYPE'] = 'application/json'
      request.env['RAW_POST_DATA'] = json
      post :create
    end
  end
end