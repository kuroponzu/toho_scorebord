class ChangeDatatypeClearOfGameresults < ActiveRecord::Migration[5.1]
  def change
    change_column :gameresults,:clear,:string
  end
end
