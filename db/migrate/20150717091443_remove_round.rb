class RemoveRound < ActiveRecord::Migration
  def change
    remove_column :results, :round
  end
end
