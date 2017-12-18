class CreateDifficulity1s < ActiveRecord::Migration[5.1]
  def change
    create_table :difficulity1s do |t|
      t.string :difficult

      t.timestamps
    end
  end
end
