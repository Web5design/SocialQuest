class QuestsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  def create
  	params.delete('action')
  	params.delete('controller')
    user = User.first

    success, quest = QuestManagementService.create!(user, params)

    if success && quest.id?
      respond_to do |format|
        format.json  { render :json => quest, :status => "201 Created" }
        format.html { redirect_to quest }
      end
    else
    	raise "Error, return json error?"
    end
  end
  
  def index
  	@quests = Quest.all
    respond_to do |format|
      format.json { render_for_api :public, :json => @quests, :root => :quests }
    end
  end

end
