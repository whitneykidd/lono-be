class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
  end

  def create
    day = Day.new_day(day_args)
    day_saved = day.save
    # user1 = User.find_by(name: day_args["name"])
    # require "pry"; binding.pry
    # day_data = day_args.except("name")
    # total_day_data = day_data.merge!(user_id: user1.id)
    # require "pry"; binding.pry
    # render json: Day.create(total_day_data)
    render json: day_saved
  end

  private

  def day_args
    params.require(:day).permit(:temperature, :date, :name)
  end
end
