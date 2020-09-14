class User < ApplicationRecord
  def self.new_user(user_info)
    # binding.pry
    start_date = user_info["start_date"]
    avg_period = user_info["avg_period"]
    avg_cycle = user_info["avg_cycle"]
    name = user_info["name"]

    info = prep_user_info(start_date, avg_cycle, avg_period, name)
    new(info)
  end

  def self.prep_user_info(start_date, avg_cycle, avg_period, name)
    {
      start_date: start_date,
      avg_period: avg_period,
      avg_cycle: avg_cycle,
      name: name
    }
  end
end
