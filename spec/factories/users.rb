# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "鈴木#{n}郎" }
    sequence(:email) { |n| "suzuki#{n}@example.com" }
  end
end
