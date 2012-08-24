class SkillsController < ApplicationController

  # GET /skills
  def index
    @skills = Skill.all
    respond_to do |format|
      format.json { render_for_api :public, :json => @skills, :root => :skills }
    end
  end

  # GET /skills/1
  def show
    @skill = Skill.find(params[:id])

    render json: @skill
  end

  # POST /skills
  def create
    @skill = Skill.new(params[:skill])

    if @skill.save
      render json: @skill, status: :created, location: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # PUT /skills/1
  def update
    @skill = Skill.find(params[:id])

    if @skill.update_attributes(params[:skill])
      head :no_content, :status => "200 Updated"
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skills/1
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    format.head :no_content
    render
  end
end
