class CreateGamescores < ActiveRecord::Migration[5.1]
  def change
    create_table :gamescores do |t|
      t.integer :score
      t.boolean :clear

      t.timestamps
    end
  end
end
