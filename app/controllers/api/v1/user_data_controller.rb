class Api::V1::UserDataController < ApplicationController
  def index
    render json: User.all
  end

  def create
    # binding.pry
    render json: User.create(data_args)
  end

  private

  def data_args
    params.permit(:start_date, :avg_period, :avg_cycle)

    # params.permit(:start_date, :avg_period, :avg_cycle)

  end
end
