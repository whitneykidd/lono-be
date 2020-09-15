require 'rails_helper'

RSpec.describe "when using high risk service" do
    before :each do
      @user = User.create({start_date: '08/01/2020',
                          avg_period: 5,
                          avg_cycle: 30,
                          day_of_ovulation: 14,
                          name: "billie"})
      @user.days.create([
        { temperature: 97.3921407225235,
          date: '08/01/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.45472336125859,
        date: '08/02/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.37539305082082,
        date: '08/03/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.39594321187163,
        date: '08/04/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.22967507338001,
        date: '08/05/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.15550167462081,
        date: '08/06/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.37489920782173,
        date: '08/07/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.32587582389289,
        date: '08/08/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.2532495702544,
        date: '08/09/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.47893633165044,
        date: '08/10/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.12108556511471,
        date: '08/11/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.39352202708452,
        date: '08/12/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.39706814872008,
        date: '08/13/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.20555830876744,
        date: '08/14/2020',
        high_risk: false,
      ovulating: false},
        { temperature: 97.49626383244673,
        date: '08/15/2020',
        high_risk: false,
      ovulating: false},
        { temperature: 97.24120211190803,
        date: '08/16/2020',
        high_risk: false,
      ovulating: false},
        { temperature: 97.32789902753188,
        date: '08/17/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 97.33750832723287,
        date: '08/18/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 97.49237121174019,
        date: '08/19/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 97.08673653294982,
        date: '08/20/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 97.45035457538701,
        date: '08/21/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 97.39618222527686,
        date: '08/22/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 97.18218490258948,
        date: '08/23/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 98.31225964314442,
        date: '08/24/2020',
        high_risk: true,
        ovulating: true},
        { temperature: 97.70877277629115,
        date: '08/25/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 98.5559779070862,
        date: '08/26/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 98.29823570276363,
        date: '08/27/2020',
        high_risk: true,
        ovulating: false},
        { temperature: 98.34677713289089,
          date: '08/28/2020',
          high_risk: false,
        ovulating: false},
        { temperature: 97.70349779060184,
          date: '08/29/2020',
          high_risk: false,
        ovulating: false},
        { temperature: 98.5701435459597,
          date: '08/30/2020',
          high_risk: false,
          ovulating: false},
        { temperature: 98.5701435459597,
          date: '08/31/2020',
          high_risk: false,
          ovulating: false},
        { temperature: 97.3921407225235,
          date: '09/01/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.45472336125859,
        date: '09/02/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.37539305082092,
        date: '09/03/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.39594321187163,
        date: '09/04/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.22967507338001,
        date: '09/05/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.15550167462081,
        date: '09/06/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.37489920782173,
        date: '09/07/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.32587582389289,
        date: '09/08/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.2532495702544,
        date: '09/09/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.47893633165044,
        date: '09/10/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.12109556511471,
        date: '09/11/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.39352202709452,
        date: '09/12/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.39706814872008,
        date: '09/13/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.20555830876744,
        date: '09/14/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.49626383244673,
        date: '09/15/2020',
        high_risk: false,
        ovulating: false},
        { temperature: 97.24120211190903,
        date: '09/16/2020',
        high_risk: false,
        ovulating: false}])
    end

    it "should predict whether today is a high risk day or not" do
      day_args = { temperature: 97.32789902753188, date:"2020-09-17", name: @user.name }
      headers = { "CONTENT_TYPE" => "application/json"}
      post '/api/v1/days', headers: headers, params: JSON.generate(day_args)

      day = Day.last

      expect(response).to be_successful
      expect(day.temperature.round(2)).to eq(day_args[:temperature].round(2))
      expect(day.date).to eq(day_args[:date])
      expect(day.high_risk).to eq(true)
      expect(day.ovulating).to eq(false)
    end

    it "should predict whether today is a high risk day or not" do
      day_args = { temperature: "", date:"2020-02-17", name: @user.name }
      headers = { "CONTENT_TYPE" => "application/json"}
      post '/api/v1/days', headers: headers, params: JSON.generate(day_args)

      day = Day.last

      expect(response).to be_successful
      expect(day.date).to eq(day_args[:date])
      expect(day.high_risk).to eq(true)
      expect(day.ovulating).to eq(false)
    end

    it "should predict whether today is a high risk day or not" do
      day_args = { temperature: "", date:"08/15/2020", name: @user.name }
      headers = { "CONTENT_TYPE" => "application/json"}
      post '/api/v1/days', headers: headers, params: JSON.generate(day_args)

      day = Day.last

      expect(response).to be_successful
      expect(day.date).to eq(day_args[:date])
      expect(day.high_risk).to eq(true)
      expect(day.ovulating).to eq(true)
    end

end
