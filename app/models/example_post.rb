# frozen_string_literal: true

class ExamplePost < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :title,
    length: 5..140,
    presence: true
  validates :content, presence: true
end
