class Day < ApplicationRecord
  def self.new_day(day_info)
    # binding.pry
    temperature = day_info["temperature"]
    date = day_info["date"]
    high_risk = false
    # ^ could send to helper method that determines risk
    daily_info = prep_day_info(temperature, date, high_risk)
    new(daily_info)
  end

  def self.prep_day_info(temp, date, risk)
    {
      temperature: temp,
      date: date,
      high_risk: risk
    }
  end
end
