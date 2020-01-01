class Message < ApplicationRecord
  validates :body, presence: true, length: {minimum: 10, maximum:1000}
  belongs_to :user
end
