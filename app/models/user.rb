class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name,  presence: true,length: { maximum: 50 }
  validates :email, presence: true,length: { maximum: 255 }
  has_secure_password
#  validates :password ,presence: true,length: {minimum: 6}
  has_many :gameresults



#  def authenticated?(remember_token)
#    return false if remember_digest.nil?
#    BCrypt::Password.new(remember_digest).is_password?(remember_token)
#  end


end
