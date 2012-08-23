class UsersController < BaseController  
  def show
    render json: params[:id]
  end
end
