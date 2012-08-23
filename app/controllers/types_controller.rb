class TypesController < ApplicationController
  def index
    @types =Type.all
    respond_to do |format|
      format.json { render_for_api :public, :json => @types, :root => :types }
    end
  end

  def show
    @type = Type.find(params[:id])
  
    respond_to do |format|
      format.json { render_for_api :public, :json => @type }
    end
  end
end
