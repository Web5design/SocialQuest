class SkillsController < ApplicationController
  def index
    @skills =Skill.all
    respond_to do |format|
      format.json { render :json => @skills } 
    end
  end
end
