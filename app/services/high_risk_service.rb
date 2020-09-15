require 'date'

class HighRiskService
  # def initialize(data)
  #   @high_risk = high_risk(data)
  # end

  def high_risk(data)
    user = User.find_by(name: data["name"])

    reformatted_user_date = datetime_reformat(user.start_date)
    user_start_of_cycle = DateTime.parse(reformatted_user_date)

    reformatted_data_date = datetime_reformat(data["date"])
    date_of_temp = DateTime.parse(reformatted_data_date)
    # ((date_of_temp.to_i) - (user_start_of_cycle.to_i)) % (86400 * user.avg_cycle)
    require "pry"; binding.pry
  end

  def datetime_reformat(date_string)
    date = date_string.split("/")
    month = date[0]
    date.shift
    date.insert(1, month)
    date.join("/")
  end

  def is_ovulating(data_date_datetime_formatting, user)
    reformatted_user_date = datetime_reformat(user.start_date)
    user_start_of_cycle = DateTime.parse(reformatted_user_date)

    day_of_ovulation_in_seconds =  (user_start_of_cycle.to_i + (86400 * user.avg_cycle))
    true if DateTime.strptime(day_of_ovulation_in_seconds.to_s, "%s") == DateTime.parse(data_date_datetime_formatting)
  end
end
