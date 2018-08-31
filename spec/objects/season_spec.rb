require './test/test_helper'

RSpec.describe FantasyData::Season do
  it "contains information about an MLB season" do
    season = FantasyData::Season.current_season

    expect(season.class).to eq(FantasyData::Season)
    expect(season.id).to eq("2018REG")
  end
end
