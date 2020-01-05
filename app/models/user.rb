# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 6, maximum: 15 }
  has_many :messages
  has_secure_password
end
