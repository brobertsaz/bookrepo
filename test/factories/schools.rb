FactoryBot.define do
  factory :school do
    name             { Faker::Educator.secondary_school }
    street_address   { Faker::Address.street_address }
    city             { Faker::Address.city }
    state            { Faker::Address.state }
    zipcode          { Faker::Address.zip }
  end
end
