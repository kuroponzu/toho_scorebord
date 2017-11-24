class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name,  presence: true,length: { maximum: 50 }
  validates :email, presence: true,length: { maximum: 255 }
  #–³Œø‚ÈƒAƒhƒŒƒX‚ÉŠÖ‚µ‚Ä‚Í‚ ‚Æ‚ÅŽÀ‘•
  has_secure_password
  validates :password ,presence: true,length: {minimum: 6}
end
