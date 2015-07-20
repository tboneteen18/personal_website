class ResultController < ApplicationController
  before_action :find_tournament
  before_action :find_result, only:[:show]

  def index
    @round = @tournament.rounds.find_by(id: params[:round_id])
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
end
