FactoryBot.define do
  factory :user do
    start_date { Faker::Date.between(from: '2014-01-01', to: '2014-03-31') }
    name { Faker::Name.first_name }
    avg_period { Faker::Number.between(from: 6, to: 9)}
    avg_cycle { Faker::Number.between(from: 25, to: 29) }
  end
end
