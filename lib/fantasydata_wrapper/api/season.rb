require 'fantasydata/constants'

module FantasyData
  module API
    module Season
      include FantasyData::API::Utils
      include FantasyData::API::Endpoints

      def current_season
        response = get(CURRENT_SEASON)
      end
    end
  end
end
