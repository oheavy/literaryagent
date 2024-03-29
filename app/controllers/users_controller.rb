class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @users.map(&:attributes) }
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
