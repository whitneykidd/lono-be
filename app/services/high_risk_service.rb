class HighRiskService
  def initialize(data)
    @high_risk = high_risk?(data)
  end

  def high_risk?(data)
    user = User.find_by(name: data["name"])
    require "pry"; binding.pry
    return false
  end
end
