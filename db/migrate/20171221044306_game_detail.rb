class GameDetail < ActiveRecord::Migration[5.1]
  def change
    create_table :gamedetails do |t|
      t.string :gamename
      t.string :difficulty
      t.string :character
    end
  end
end
