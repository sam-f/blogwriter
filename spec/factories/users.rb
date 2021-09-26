# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@example.com" }
    sequence(:username) { |n| "user_#{n}" }
    first_name { "Alex" }
    last_name { "Example" }
    password { "secret123" }
  end
end
