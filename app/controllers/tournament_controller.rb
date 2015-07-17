class TournamentController < ApplicationController
  before_action :find_tournament, only:[:show]

  def index
    @tournament = Tournament.all
  end

  def show
    @user = @tournament.tasks
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save
      for i in 0..15
        User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, tournament: @tournament)
      end
      redirect_to tournament_index_path
    else
      render :new
    end
  end

  def destroy
  end

  private
  def find_tournament
    @tournament = Tournament.find_by(id: params[:id])
  end

  def tournament_params
    params.require(:tournament).permit(:id, :date)
  end
end
