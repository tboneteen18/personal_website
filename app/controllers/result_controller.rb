class ResultController < ApplicationController
  before_action :find_tournament
  before_action :find_result, only:[:show]

  def index
    # byebug
    @result = Result.where(round_id: Round.where(tournament_id: @tournament, rounded_id: params[:round_id]))
  end

  def show
  end

  private
  def find_tournament
    @tournament = Tournament.find_by(id: params[:tournament_id])
    unless @tournament
      render(text: 'Bucket Not Found', status: 404)
    end
  end

  def result_params
    params.require(:result).permit(:win, :loss, :win_id, :round_id)
  end

  def find_result
    @result = Result.find_by(id: params[:id])
  end

end
