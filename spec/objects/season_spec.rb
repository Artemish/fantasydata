require './test/test_helper'

RSpec.describe FantasyData::Season do
  it "contains information about an MLB season" do
    VCR.use_cassette "current_season" do
      season = FantasyData::API::Season.current_season

      expect(season.Season).to eq("2018")
    end
  end
end
