require 'fantasydata/api/utils'

module FantasyData
  module API
    module Season
      include FantasyData::API::Utils
      include FantasyData::API::Endpoints

      def current_season
        get(CURRENT_SEASON)
      end
    end
  end
end
