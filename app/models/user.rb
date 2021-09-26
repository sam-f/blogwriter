# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  # Associations
  has_many :posts, dependent: :destroy_async
  has_many :example_posts, dependent: :delete_all

  # Validations
  validates :email,
    length: 3..254,
    uniqueness: {case_sensitive: false},
    presence: true,
    format: Email::Address::FORMAT
end
