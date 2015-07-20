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
    @round = @tournament.rounds.new(round_params)

    if @round.save
      round_data = User.where(tournament_id: @round.tournament_id)
      round_data.sort_by{|user| user.win_count}
      for i in (0..round_data.count - 1).step(2)
        if rand(0..1) == 0
          round_data[i].results.create(win: 0, loss: 1, round_id: @round.id)
          round_data[i + 1].results.create(win: 1, loss: 0, round_id: @round.id)
        else
          round_data[i].results.create(win: 1, loss: 0, round_id: @round.id)
          round_data[i + 1].results.create(win: 0, loss: 1, round_id: @round.id)
        end
      end
      redirect_to tournament_round_index_path
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
    params.require(:round).permit(:number)
  end

  def find_round
    @round = @tournament.rounds.find_by(id: params[:id])
  end

end
