class Day < ApplicationRecord
  belongs_to :user
  def self.new_day(day_info)
    # binding.pry
    temperature = day_info["temperature"]
    date = day_info["date"]
    high_risk = false
    user_id = ["user_id"]
    # ^ could send to helper method that determines risk
    daily_info = prep_day_info(temperature, date, high_risk, user_id)
    new(daily_info)
  end

  def self.prep_day_info(temp, date, risk, user_id)
    {
      temperature: temp,
      date: date,
      high_risk: risk,
      user_id: user_id
    }
  end
end
