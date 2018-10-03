FactoryBot.define do
  factory :student do
    email      { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    password               'password'
    password_confirmation  'password'
  end
end
