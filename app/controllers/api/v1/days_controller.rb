class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
  end

  def create
    render json: Day.create(day_args)
  end

  private

  def day_args
    params.require(:day).permit(:temperature, :date)
  end
end