class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
  end

  def create
    day = Day.new_day(day_args)
    day.save
    render json: Day.last
  end

  private

  def day_args
    params.permit(:temperature, :date, :name)
  end
end
