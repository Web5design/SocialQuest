class BaseController < ApplicationController
  after_filter :set_access_control_origin_headers
  def index
  	respond_to do |format|
    	format.html { redirect_to root }
    	format.json { render json: { controller: self.class.inspect } }
    end
  end
  
  private
    
    def set_access_control_origin_headers
      response.headers['Access-Control-Allow-Origin'] = '*'
      response.headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      response.headers['Access-Control-Max-Age'] = "1728000"
    end

end
