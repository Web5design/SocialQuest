class StaticController < ApplicationController
  def index
    render json: { social_qust: "Let's Start the Mission for a Better World" }
  end
end
