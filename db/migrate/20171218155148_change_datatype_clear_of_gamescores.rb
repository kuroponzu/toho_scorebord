class ChangeDatatypeClearOfGamescores < ActiveRecord::Migration[5.1]
  def change
    change_column :gamescores,:clear,:string
  end
end
