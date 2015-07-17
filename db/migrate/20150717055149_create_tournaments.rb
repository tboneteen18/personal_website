class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.date :date
      
      t.timestamps null: false
    end
  end
end
