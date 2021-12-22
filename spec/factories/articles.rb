# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    user { nil }
    title { 'たいとる' }
    body { 'ほんぶん' }

    trait :with_user do
      user { create(:user) }
    end
  end
end
