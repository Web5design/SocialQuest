class StaticController < ApplicationController
  def index
    render json: { social_quest: "Let's Start the Mission for a Better World", documentation: "https://github.com/SocialQuest/SocialQuest/wiki" }
  end
end
