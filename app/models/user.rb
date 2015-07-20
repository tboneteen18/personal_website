class User < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :round
  has_many :results

  def win_count
    self.results.where(win: 1).count
  end

  def lose_count
    self.results.where(loss: 1).count
  end
end
