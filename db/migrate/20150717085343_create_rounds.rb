class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :tournament

      t.timestamps null: false
    end
  end
end
