FactoryGirl.define do
  factory :blog do
    title { Faker::Lorem.word }
    description { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
  end
end
