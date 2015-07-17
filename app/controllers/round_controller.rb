class RoundController < ApplicationController
  before_action :find_tournament
  before_action :find_round, only:[:show]

  def show
    #code
  end
  def index
    @round = @tournament.rounds.all
  end
  def new
    @round = Round.new
  end

  def create
    @round = Round.new(round_params)
    if @round.save
      round_data = User.where(tournament_id: @round.tournament_id)
      round_data.to_a.sort!{ |x,y| Result.where(winner_id: y.id).count <=> Result.where(winner_id: x.id).count }
      for i in (0..15).step(2)
        if rand(0..1) == 0
          Result.create(win: round_data[i], loss: round_data[i+1], round_id: @round.id)
        else
          Result.create(win: round_data[i+1], loss: round_data[i], round_id: @round.id)
        end
      end
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def find_tournament
    @tournament = Tournament.find_by(id: params[:tournament_id])
    unless @tournament
      render(text: 'Bucket Not Found', status: 404)
    end
  end
  def round_params
    params.require(:round).permit(:rounded_id, :tournament_id)
  end
  def find_round
    @round = Round.find_by(id: params[:id])
  end

end
