class RenamecharaZireidenTocharaTireiden < ActiveRecord::Migration[5.1]
  def change
    rename_table :chara_zireidens, :chara_tireiden
  end
end
