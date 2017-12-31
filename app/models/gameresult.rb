class Gameresult < ApplicationRecord
  include ActiveModel::Model
  belongs_to :user
  belongs_to :gamedetail
  validates :score ,presence: true

  #formで使用するため、attr_accessorを定義
  attr_accessor :difficulty, :character

end
