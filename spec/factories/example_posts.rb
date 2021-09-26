# frozen_string_literal: true

FactoryBot.define do
  factory :example_post do
    association :user
  end
end
