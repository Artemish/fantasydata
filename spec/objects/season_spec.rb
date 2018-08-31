require './spec/spec_helper'

RSpec.describe FantasyData::API::Season do
  it "contains information about an MLB season" do
    VCR.use_cassette "current_season" do
      season = FantasyData::Client.current_season

      expect(season['Season']).to eq(2018)
    end
  end
end
