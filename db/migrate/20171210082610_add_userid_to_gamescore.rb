class AddUseridToGamescore < ActiveRecord::Migration[5.1]
  def change
    add_column :gamescores, :user_id, :integer
    add_column :gamescores, :score_id, :integer
  end
end
