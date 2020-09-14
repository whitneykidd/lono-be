class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
    # binding.pry
  end

  def create
    day = Day.new_day(day_args)
    # Day.new(day_args) => Day model, have method that calcs high_risk, then initalizes obj ??
    binding.pry
    render json: Day.create(day_args)
    # render json: DaySerializer.new(day)
  end

  private

  def day_args
    params.require(:day).permit(:temperature, :date)
  end
end