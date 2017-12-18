class Addcolumtoscore < ActiveRecord::Migration[5.1]
  def change
    add_column :gamescores, :name, :string
    add_column :gamescores, :difficulty, :string
    add_column :gamescores, :character, :string

  end
end
