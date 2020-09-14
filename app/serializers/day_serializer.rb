class DaySerializer
    include FastJsonapi::ObjectSerializer
  set_type 'day'
  attributes :temperature, :date, :high_risk
end