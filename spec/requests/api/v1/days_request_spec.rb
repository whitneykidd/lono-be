require 'rails_helper'

describe "Days API" do
  it "sends a list of days" do
    create_list(:day, 3)

    get '/api/v1/days'

    expect(response).to be_successful
    days = JSON.parse(response.body)
    expect(days.count).to eq(3)
  end
end