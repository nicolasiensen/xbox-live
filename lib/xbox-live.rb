require "xbox-live/version"
require "multi_json"

module XboxLive
  def self.profile gamertag
    MultiJson.load(Faraday.get("http://www.xboxleaders.com/api/profile.json?gamertag=#{gamertag}").body)
  end

  def self.games gamertag
    MultiJson.load(Faraday.get("http://www.xboxleaders.com/api/games.json?gamertag=#{gamertag}").body)
  end
  
  def self.achievements gamertag, title_id
    MultiJson.load(Faraday.get("http://www.xboxleaders.com/api/achievements.json?gamertag=#{gamertag}&titleid=#{title_id}").body)
  end
  
  def self.friends gamertag
    MultiJson.load(Faraday.get("http://www.xboxleaders.com/api/friends.json?gamertag=#{gamertag}").body)
  end
end
