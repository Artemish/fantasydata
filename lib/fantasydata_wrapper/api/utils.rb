require 'faraday'
require 'json'

API_BASE = "https://api.fantasydata.net/v3/mlb/"
DATA_FORMAT = "json"

module FantasyData
  module API
    module Utils
      include FantasyData::API::Secrets

      def get(endpoint)
        conn = Faraday.new(:url => endpoint)
        conn.get do |req|
          req.headers['Ocp-Apim-Subscription-Key'] = API_KEY
        end

        return JSON.parse(response)
      end
    end

    module Endpoints
      CURRENT_SEASON = "#{API_BASE}/stats/#{DATA_FORMAT}/CurrentSeason"
    end
  end
end
