class UserController < ApplicationController
  before_action :find_tournament
  before_action :find_user, only:[:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @user = @tournament.users.all
  end

  def destroy
  end

  private
  
  def find_tournament
    @tournament = Tournament.find_by(id: params[:tournament_id])
    unless @tournament
      render(text: 'Bucket Not Found', status: 404)
    end
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
