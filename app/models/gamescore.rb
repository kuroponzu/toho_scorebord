class Gamescore < ApplicationRecord
  belongs_to :User ,optional: true
end
