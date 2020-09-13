class Api::V1::UserDataController < ApplicationController
  def index
    render json: UserData.all
  end
end