class Gameresult < ApplicationRecord
  include ActiveModel::Model
  belongs_to :user
  belongs_to :gamedetail
  #has_many :gamedetails
  validates :score ,presence:true

  #formで使用するため、attr_accessorを定義
  attr_accessor :difficulty, :character

  #カラム名と外部キーの名前が一致していないため、外部キーを明示的に記載。
  #belongs_to :gamedetails ,class_name:"Gamedetail" , foreign_key: "game_id"

end
