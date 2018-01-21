class Gamedetail < ApplicationRecord
  has_many :gameresults dependent: :delete_all
end
