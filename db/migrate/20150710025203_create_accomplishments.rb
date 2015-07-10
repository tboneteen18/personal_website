class CreateAccomplishments < ActiveRecord::Migration
  def change
    create_table :accomplishments do |t|
      t.string :title
      t.string :name
      t.text :description
      t.text :information
      t.date :date

      t.timestamps null: false
    end
  end
end
