class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 6, maximum: 15}
  has_secure_password
end
