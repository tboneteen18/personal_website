class Add < ActiveRecord::Migration
  def change
    add_column :results, :win_id, :integer
    add_column :results, :loss_id, :integer
  end
end
