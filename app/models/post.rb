# frozen_string_literal: true

class Post < ApplicationRecord
  # Associations
  belongs_to :user
  has_one_attached :header_image
  has_rich_text :content

  # Validations
  validates :title,
    length: 5..140,
    presence: true,
    uniqueness: {case_sensitive: false}
end
