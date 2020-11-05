class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A[A-Z0-9]+\z/
  
  validates :name, presence: true, length:{maximum: 15}
  validates :email, presence: true, format:{with: VALID_EMAIL_REGEX}
  validates :password, length: { in: 6..20 }, format: {with: VALID_PASSWORD_REGEX}
  
  has_secure_password
end
