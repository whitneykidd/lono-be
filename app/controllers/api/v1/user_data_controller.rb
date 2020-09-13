class Api::V1::UserDataController < ApplicationController
  def index
    render json: UserData.all
  end

  def create
    # binding.pry
    render json: UserData.create(data_args)
  end

  private

  def data_args
    params.require(:user_data).permit(:start_date, :avg_length, :avg_cycle)
  end
end