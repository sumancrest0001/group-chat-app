# frozen_string_literal: true

class Message < ApplicationRecord
  validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
  belongs_to :user
  scope :custom_display, -> { order(:created_at).last(20) }
end
