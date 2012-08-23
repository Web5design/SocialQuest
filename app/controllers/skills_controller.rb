class SkillsController < ApplicationController
  def index
    @skills =Skill.all
    respond_to do |format|
      format.json { render_for_api :public, :json => @skills, :root => :skills }
    end
  end

  def show
    @skill = Skill.find(params[:id])
  
    respond_to do |format|
      format.json { render_for_api :public, :json => @skill }
    end
  end
end
