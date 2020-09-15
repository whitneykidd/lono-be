class Day < ApplicationRecord
  belongs_to :user
  def self.new_day(day_info)
    temperature = day_info["temperature"]
    date = day_info["date"]
    high_risk = HighRiskService.new(day_info)
    user_risk = high_risk.user_is_high_risk
    ovulation = high_risk.user_is_ovulating
    user_id = high_risk.user.id
    daily_info = prep_day_info(temperature, date, user_risk, user_id, ovulation)
    new(daily_info)
  end

  def self.prep_day_info(temp, date, risk, user_id, user_ovulation)
    {
      temperature: temp,
      date: date,
      high_risk: risk,
      ovulating: user_ovulation,
      user_id: user_id
    }
  end
end
