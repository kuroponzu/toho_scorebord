class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name ,null: false
      t.string :email ,null: false ,unique: true
      t.string :password_digest ,null: false
      #t.string :remember_token
      t.boolean :admin
      t.text :comment
      t.timestamps
    end
  end
end
