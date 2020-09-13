FactoryBot.define do
  factory :day do
    date { Faker::Date.between(from: '2014-01-01', to: '2014-03-31') }
    temperature { Faker::Number.normal(mean: 97.1, standard_deviation: 0.7) }
    high_risk { false }
  end
end
