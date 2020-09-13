require 'rails_helper'

describe "Days API" do
  it "sends a list of days" do
    create_list(:day, 3)

    get '/api/v1/days'

    expect(response).to be_successful
    days = JSON.parse(response.body)
    # binding.pry
    expect(days.count).to eq(3)
  end

  it "can create a new day" do
    day_args = { temperature: 97.1, date:"2020-09-09" }
    headers = { "CONTENT_TYPE" => "application/json"}

    post '/api/v1/days', headers: headers, params: JSON.generate({ day: day_args})
    day = Day.last
# binding.pry
    expect(response).to be_successful
    expect(day.temperature).to eq(day_args[:temperature])
    expect(day.date).to eq(day_args[:date])
  end
end