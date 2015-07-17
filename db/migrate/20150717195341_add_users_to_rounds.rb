class AddUsersToRounds < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :round
    end
  end
end
