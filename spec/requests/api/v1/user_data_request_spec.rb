require 'rails_helper'

describe "User Data API" do
  it "sends a list of user data" do
    create_list(:user_data, 3)

    get '/api/v1/user_data'

    expect(response).to be_successful
  end
end