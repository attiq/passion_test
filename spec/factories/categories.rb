FactoryBot.define do
  factory :category do
    name {Faker::Lorem.unique.word}
    state 'active'
    vertical_id nil
  end
end