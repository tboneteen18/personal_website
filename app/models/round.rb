class Round < ActiveRecord::Base
  has_many :users
  belongs_to :tournament
  validates_uniqueness_of :rounded_id, :scope => :tournament_id
end
