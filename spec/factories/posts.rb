# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Post #{n}" }
    post_at { Time.current }
  end
end
