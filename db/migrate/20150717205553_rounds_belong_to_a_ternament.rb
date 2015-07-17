class RoundsBelongToATernament < ActiveRecord::Migration
  def change
    change_table :rounds do |t|
      t.belongs_to :termanent
    end
  end
end
