class CreateCharaKomakyos < ActiveRecord::Migration[5.1]
  def change
    create_table :chara_komakyos do |t|
      t.string :character

      t.timestamps
    end
  end
end
