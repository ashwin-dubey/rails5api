FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email 'test@user.com'
    password 'testuser'
  end
end
