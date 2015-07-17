class Round < ActiveRecord::Base
  validates_uniqueness_of :rounded_id, :scope => :tournament_id
end
