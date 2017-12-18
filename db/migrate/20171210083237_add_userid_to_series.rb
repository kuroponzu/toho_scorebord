class AddUseridToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :user_id, :integer
    add_column :series, :score_id, :integer
  end
end
