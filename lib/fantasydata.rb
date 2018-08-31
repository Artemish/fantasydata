require "fantasydata/version"
require "fantasydata/api/season"

module FantasyData
  class Client
    extend FantasyData::API::Season
  end
end
