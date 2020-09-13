class Api::V1::DaysController < ApplicationController
  def index
    render json: Day.all
  end
end