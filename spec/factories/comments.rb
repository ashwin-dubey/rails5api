FactoryGirl.define do
  factory :comment do
    description { Faker::StarWars.character }
    created_by { Faker::Number.number(10) }
  end
end
