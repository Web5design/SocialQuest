# encoding: UTF-8

class QuestsController < BaseController
  def create
    ## Abstract
    # current_user ||= UserRegistrationService.register!(params[:user][:email])
    # sign_in current_user unless user_signed_in?
    # quest = QuestManagementService.create!(params[:quest])
    # render json: quest
    render nothing: true
  end
end
