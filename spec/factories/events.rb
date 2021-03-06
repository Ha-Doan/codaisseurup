FactoryGirl.define do
  factory :event do
    name          { Faker::Name.name }
    description   { Faker::Lorem.sentence(40) }
    location       { Faker::Address.street_address }
    price         { Faker::Commerce.price }
    capacity      {Faker::Number.positive}
    starts_at    {Faker::Date.forward(30)}
    ends_at      {Faker::Date.forward(30)}
    includes_food    false
    includes_drink   false
    user              { build(:user) }
    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
