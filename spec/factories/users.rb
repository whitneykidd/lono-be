FactoryBot.define do
  factory :user do
    start_date { Faker::Date.between(from: '2014-01-01', to: '2014-03-31') }
    avg_length { Faker::Number.between(from: 6, to: 9)}
    avg_cycle { Faker::Number.between(from: 25, to: 29) }
  end
end
