require 'rails_helper'

describe "Days API" do
  it "sends a list of days" do
    user = create(:user)
    create_list(:day, 3, :user_id => user.id)

    get '/api/v1/days'

    expect(response).to be_successful
    days = JSON.parse(response.body)
    # binding.pry
    expect(days.count).to eq(3)
  end

  it "can create a new day" do
    user = create(:user)
    day_args = { temperature: 97.1, date:"2020-09-09", user_id: user.id }
    headers = { "CONTENT_TYPE" => "application/json"}

    post '/api/v1/days', headers: headers, params: JSON.generate({ day: day_args})
    day = Day.last
    expect(response).to be_successful
    expect(day.temperature).to eq(day_args[:temperature])
    expect(day.date).to eq(day_args[:date])
  end
end
