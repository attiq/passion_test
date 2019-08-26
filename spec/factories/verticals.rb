FactoryBot.define do
  factory :vertical do
    name {Faker::Lorem.unique.word}
  end
end