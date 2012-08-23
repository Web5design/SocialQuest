class UsersController < Api::BaseController  
  def show
    render json: params[:id]
  end
end
