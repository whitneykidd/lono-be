class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
    # binding.pry
  end

  def create
    # binding.pry
    # Day.new(day_args) => Day model, have method that calcs high_risk, then initalizes obj ??
    render json: Day.create(day_args)
  end

  private

  def day_args
    params.require(:day).permit(:temperature, :date)
  end
end