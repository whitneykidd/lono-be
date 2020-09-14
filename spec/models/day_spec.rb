require 'rails_helper'

describe Day do
  it 'exists' do
    attrs = { temperature: 97.1, date:"2020-09-09" }
    day = Day.new(attrs)

    expect(day).to be_a Day
    expect(day.temperature).to eq(97.1)
    expect(day.date).to eq("2020-09-09")
    # expect(day.high_risk).to eq(false)
  end
end