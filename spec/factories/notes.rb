FactoryBot.define do
  factory :note do
    association :user, factory: :user
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
  end
end
