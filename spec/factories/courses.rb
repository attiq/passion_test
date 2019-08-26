FactoryBot.define do
  factory :course do
    name {Faker::Lorem.word}
    state 'active'
    author {Faker::Name.name}
    category_id nil
  end
end