class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :tournament
      t.integer :number

      t.timestamps null: false
    end
  end
end
