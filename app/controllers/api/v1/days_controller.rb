class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
    # binding.pry
  end

  def create
    day = Day.new_day(day_args)
    user1 = User.find_by(name: day_args["name"])
    day_data = day_args.except("name")
    total_day_data = day_data.merge!(user_id: user1.id)
    render json: Day.create(total_day_data)
  end

  private

  def day_args
    params.require(:day).permit(:temperature, :date, :name)
  end
end
