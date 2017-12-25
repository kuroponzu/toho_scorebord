class GameResult < ActiveRecord::Migration[5.1]
  def change
    create_table :gameresults do |t|
      t.integer :user_id
      t.integer :gamedetail_id
      t.integer :score
      t.integer :clear
      t.timestamps
    end
  end
end
