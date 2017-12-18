class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :name
      t.string :difficulty
      t.string :character

      t.timestamps
    end
  end
end
