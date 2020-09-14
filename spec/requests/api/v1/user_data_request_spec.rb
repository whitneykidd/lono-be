require 'rails_helper'

describe "User Data API" do
  it "sends a list of user data" do
    create_list(:user, 3)

    get '/api/v1/user_data'

    expect(response).to be_successful
    user_data = JSON.parse(response.body)
    expect(user_data.count).to eq(3)
  end

  it "can create a new user_data" do
    data_args = {start_date: "2014-02-24", avg_period: 7, avg_cycle: 27, name: "User Name" }
    headers = { "CONTENT_TYPE" => "application/json" }

    post "/api/v1/user_data", headers: headers, params: JSON.generate({user: data_args})
    user_data = User.last
# binding.pry
    expect(response).to be_successful
    # expect(user_data.start_date).to eq("2014-02-24")
    # expect(user_data.avg_period).to eq(7)
    # expect(user_data.avg_cycle).to eq(27)
  end
end