class Day < ApplicationRecord
  belongs_to :user
  def self.new_day(day_info)
    temperature = day_info["temperature"]
    date = day_info["date"]
    high_risk = HighRiskService.new.high_risk(day_info)
    user1 = User.find_by(name: day_info["name"])
    user_id = user1.id
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
