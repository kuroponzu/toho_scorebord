class CreateCharaZireidens < ActiveRecord::Migration[5.1]
  def change
    create_table :chara_zireidens do |t|
      t.string :character

      t.timestamps
    end
  end
end
