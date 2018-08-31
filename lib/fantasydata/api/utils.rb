require 'faraday'
require 'json'

require 'fantasydata/api/secrets'

API_BASE = "https://api.fantasydata.net/v3/mlb/"
DATA_FORMAT = "json"

module FantasyData
  module API
    module Utils
      include FantasyData::API::Secrets

      def get(endpoint)
        conn = Faraday.new(:url => endpoint)
        response = conn.get do |req|
          req.headers['Ocp-Apim-Subscription-Key'] = API_KEY
        end

        return JSON.parse(response.body)
      end
    end

    module Endpoints
      CURRENT_SEASON = "#{API_BASE}/stats/#{DATA_FORMAT}/CurrentSeason"
    end
  end
end
