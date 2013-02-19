require "xboxlive-wrapper/version"
require "multi_json"

module XboxLive
  def self.profile gamertag
    MultiJson.load(Faraday.get("http://www.xboxleaders.com/api/profile.json?gamertag=#{gamertag}").body)
  end
end
