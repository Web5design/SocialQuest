class BaseController < ApplicationController
  def index
    render json: { controller: self.class.inspect }
  end
end
