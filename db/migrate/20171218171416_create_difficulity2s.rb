class CreateDifficulity2s < ActiveRecord::Migration[5.1]
  def change
    create_table :difficulity2s do |t|
      t.string :difficult

      t.timestamps
    end
  end
end
