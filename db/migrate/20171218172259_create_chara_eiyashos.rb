class CreateCharaEiyashos < ActiveRecord::Migration[5.1]
  def change
    create_table :chara_eiyashos do |t|
      t.string :character

      t.timestamps
    end
  end
end
