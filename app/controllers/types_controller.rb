class TypesController < ApplicationController

  # GET /types
  def index
    @types = Type.all

    render json: @types
  end

  # GET /types/1
  def show
    @type = Type.find(params[:id])

    render json: @type
  end

  # POST /types
  def create
    @type = Type.new(params[:type])

    if @type.save
      render json: @type, status: :created, location: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # PUT /types/1
  def update
    @type = Type.find(params[:id])

    if @type.update_attributes(params[:type])
      head :no_content
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /types/1
  def destroy
    @type = Type.find(params[:id])
    @type.destroy

    head :no_content
  end
end
