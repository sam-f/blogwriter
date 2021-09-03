# frozen_string_literal: true

class Post < ApplicationRecord
  # Associations
  has_rich_text :content
  has_one_attached :header_image

  # Validations
  validates :title,
    length: 5..140,
    presence: true,
    uniqueness: {case_sensitive: false}
end
