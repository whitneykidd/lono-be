class Api::V1::UserDataController < ApplicationController
  def index
    render json: UserData.all
  end

  def create
    render json: UserData.create(data_args)
  end

  private

  def data_args
    params.permit(:start_date, :avg_length, :avg_cycle)
  end
end