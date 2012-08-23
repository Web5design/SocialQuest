class QuestsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  def create
  	params.delete('action')
  	params.delete('controller')
    user = User.first

    success, quest = QuestManagementService.create!(user, params)

    if success && quest.id?
      render :json => quest, :status => "201 Created"
    else
    	raise "Error, return json error?"
    end
  end

  def index
  	users = User.all
		render :json => users
  	# respond_to do |format|
  	# 	format.html { render :json => users }
  	# 	format.json { render :json => users }
  	# end	
  end

end
