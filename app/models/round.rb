class Round < ActiveRecord::Base
  has_many :users
  belongs_to :tournament
end
