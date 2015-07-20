class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :round
      t.belongs_to :user
      t.integer :win
      t.integer :loss

      t.timestamps null: false
    end
  end
end
