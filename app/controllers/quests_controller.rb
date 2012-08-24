class QuestsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  def create
    
    #needs to be removed
  	params.delete('action')
  	params.delete('controller')
    user = User.first

    @success, @quest = QuestManagementService.create!(user, params)
    if @success && @quest.id?
      render :json => quest, :status => "201 Created"
    else
      render :json => quest, :status => "400 Failed"
    end
  end
  
  def index
  	@quests = Quest.all
  	render :json => @quests.to_json
  end

end
