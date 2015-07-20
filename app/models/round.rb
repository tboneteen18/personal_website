class Round < ActiveRecord::Base
  has_many :users
  has_many :results
  belongs_to :tournament
end
