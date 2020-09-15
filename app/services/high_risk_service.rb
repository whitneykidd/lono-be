require 'date'

class HighRiskService
  attr_reader :user_is_high_risk, :user_is_ovulating, :user
  def initialize(data)
    @data = data
    @user = User.find_by(name: @data["name"])
    @user_start_of_cycle = DateTime.parse(datetime_reformat(@user.start_date))
    @date_of_temp = DateTime.parse(datetime_reformat(@data["date"]))
    @user_is_ovulating = is_ovulating(@date_of_temp, @user, @user_start_of_cycle)
    @user_is_high_risk = is_high_risk(@date_of_temp, @user, @user_start_of_cycle)
  end

  def datetime_reformat(date_string)
    date = date_string.split("/")
    month = date[0]
    date.shift
    date.insert(1, month)
    date.join("/")
  end

  def is_ovulating(data_date_datetime_formatting, user, user_startdate_datetime)
    days_since_biginning_of_cycle = (data_date_datetime_formatting.to_i - user_startdate_datetime.to_i)

    return true if days_since_biginning_of_cycle % (86400 * user.avg_cycle) < 86400
    return false if days_since_biginning_of_cycle % (86400 * user.avg_cycle) >= 86400
  end

  def is_high_risk(data_date_datetime_formatting, user, user_startdate_datetime)
    days_since_biginning_of_cycle = (data_date_datetime_formatting.to_i - user_startdate_datetime.to_i)


    return true if days_since_biginning_of_cycle % (86400 * (user.avg_cycle - 7)) < (86400*8)
    return false if days_since_biginning_of_cycle % (86400 * (user.avg_cycle - 7)) >= (86400*8)
  end
end
