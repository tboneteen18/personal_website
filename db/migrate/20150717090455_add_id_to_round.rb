class AddIdToRound < ActiveRecord::Migration
  def change
    change_table :rounds do |t|
      t.integer :rounded_id
    end
    change_table :results do |t|
      t.belongs_to :round
    end
  end
end
