class BaseController < ApplicationController
  def index
  	respond_to do |format|
    	format.html { redirect_to root }
    	format.json { render json: { controller: self.class.inspect } }
  end
end
