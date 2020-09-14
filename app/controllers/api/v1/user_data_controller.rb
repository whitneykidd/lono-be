class Api::V1::UserDataController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new_user(data_args)
    # binding.pry
    render json: User.create(user)
  end

  private

  def data_args
    params["user"].permit(:start_date, :avg_period, :avg_cycle, :name)
    # params["user"].permit(:start_date, :avg_period, :avg_cycle, :name)

    # params.permit(:start_date, :avg_period, :avg_cycle)

  end
end
