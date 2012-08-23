class TypesController < ApplicationController
  def index
    @types =Type.all
    respond_to do |format|
      format.json { render :json => @types } 
    end
  end
end
