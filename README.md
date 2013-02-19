# XboxLive

Welcome to the next most hot gem in the world! It was built on the top of [XboxLeaders](http://www.xboxleaders.com/) API and offers an interface for profile, games, achievements and friends data of the Xbox Live. Feel free to use, copy and change.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xbox-live'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xbox-live

## Usage

### Profile

```ruby
XboxLive.profile("nicolasjensen")
# Returns a hash like:
{
		"Data": {
  		"Tier": "gold",
  		"IsValid": 1,
  		"IsCheater": 0,
  		"IsOnline": 1,
  		"OnlineStatus": "Online playing Netflix - Watching a Movie",
  		"XBLLaunchTeam": 0,
  		"NXELaunchTeam": 0,
  		"KinectLaunchTeam": 0,
  		"AvatarTile": "http://avatar.xboxlive.com/avatar/nicolasjensen/avatarpic-l.png",
  		"AvatarSmall": "http://avatar.xboxlive.com/avatar/nicolasjensen/avatarpic-s.png",
  		"AvatarLarge": "http://avatar.xboxlive.com/avatar/nicolasjensen/avatarpic-l.png",
  		"AvatarBody": "http://avatar.xboxlive.com/avatar/nicolasjensen/avatar-body.png",
  		"AvatarTileSSL": "https://avatar-ssl.xboxlive.com/avatar/nicolasjensen/avatarpic-l.png",
  		"AvatarSmallSSL": "https://avatar-ssl.xboxlive.com/avatar/nicolasjensen/avatarpic-s.png",
  		"AvatarLargeSSL": "https://avatar-ssl.xboxlive.com/avatar/nicolasjensen/avatarpic-l.png",
  		"AvatarBodySSL": "https://avatar-ssl.xboxlive.com/avatar/nicolasjensen/avatar-body.png",
  		"Gamertag": "nicolasjensen",
  		"GamerScore": 20631,
  		"Reputation": 20,
  		"Name": "Nicolas Iensen",
  		"Motto": "portalxbox.com.br",
  		"Location": "PORTO ALEGRE - BRASIL - RS",
  		"Bio": ""
		},
		"Stat": "ok",
		"In": 2.207,
		"Authed": "false",
		"AuthedAs": null
}
```

### Games

```ruby
XboxLive.games("nicolasjensen")
# Returns a hash like:
{
		"Data": {
  		"Gamertag": "nicolasjensen",
  		"Gamerpic": "https://avatar-ssl.xboxlive.com/avatar/nicolasjensen/avatarpic-l.png",
  		"GameCount": 82,
  		"TotalEarnedGamerScore": 20631,
  		"TotalPossibleGamerScore": 59770,
  		"TotalEarnedAchievements": 951,
  		"TotalPossibleAchievements": 2729,
  		"TotalPercentCompleted": 34,
  		"PlayedGames": [
    			{
      			"Id": 1161890200,
      			"Title": "FIFA 13",
      			"Url": "http://marketplace.xbox.com/en-US/Title/1161890200",
      			"BoxArt": "http://www.xboxleaders.com/img/boxart/1161890200-small.jpg",
      			"LargeBoxArt": "http://www.xboxleaders.com/img/boxart/1161890200-large.jpg",
      			"EarnedGamerScore": 290,
      			"PossibleGamerScore": 1000,
      			"EarnedAchievements": 15,
      			"PossibleAchievements": 48,
      			"PercentageCompleted": 31.3,
      			"LastPlayed": 1361236174
    			},
    			{
      			"Id": 1161889798,
      			"Title": "Burnout Paradise",
      			"Url": "http://marketplace.xbox.com/en-US/Title/1161889798",
      			"BoxArt": "http://www.xboxleaders.com/img/boxart/1161889798-small.jpg",
      			"LargeBoxArt": "http://www.xboxleaders.com/img/boxart/1161889798-large.jpg",
      			"EarnedGamerScore": 370,
      			"PossibleGamerScore": 1250,
      			"EarnedAchievements": 19,
      			"PossibleAchievements": 60,
      			"PercentageCompleted": 31.7,
      			"LastPlayed": 1361051710
    			},
		]
		},
		"Stat": "ok",
		"In": 3.816,
		"Authed": "false",
		"AuthedAs": null
}
```
	
### Achievements

```ruby
# XboxLive.achievements(gamertag, title_id)
XboxLive.achievements("nicolasjensen", "1161890128")

# Returns a hash like
{
		"Data": {
  		"Id": 1161890128,
  		"Title": "Battlefield 3",
  		"Url": "http://marketplace.xbox.com/en-US/Title/1161890128",
  		"BoxArt": "http://www.xboxleaders.com/img/boxart/1161890128-small.jpg",
  		"LargeBoxArt": "http://www.xboxleaders.com/img/boxart/1161890128-large.jpg",
  		"EarnedGamerScore": 585,
  		"PossibleGamerScore": 1480,
  		"EarnedAchievements": 24,
  		"PossibleAchievements": 58,
  		"LastPlayed": 1361051619,
  		"Achievements": [
    			{
      			"Id": 13,
      			"TileUrl": "https://live.xbox.com/tiles/tU/pe/1Tc8P2NhbC8QFQQaXFJRFjUwL2FjaC8wL2QAAAABUFBQ+nFKrg==.jpg",
      			"Title": "Scrap Metal",
      			"Description": "Destroy 6 enemy tanks before reaching the fort in Thunder Run",
      			"GamerScore": 25,
      			"IsSecret": "no",
      			"Unlocked": "yes",
      			"DateEarned": 1360780860,
      			"EarnedOffline": "no"
    			},
    			{
      			"Id": 12,
      			"TileUrl": "https://live.xbox.com/tiles/TK/H8/0Dc8P2NhbC8XFQQaXFJRFjUwL2FjaC8wL2MAAAABUFBQ-9OhVw==.jpg",
      			"Title": "You can be my wingman anytime",
      			"Description": "Complete Going Hunting in a perfect run",
      			"GamerScore": 30,
      			"IsSecret": "no",
      			"Unlocked": "yes",
      			"DateEarned": 1360776355,
      			"EarnedOffline": "no"
    			}
  		]
		},
		"Stat": "ok",
		"In": 4.658,
		"Authed": "false",
		"AuthedAs": null
}
```
	
### Friends

```ruby
XboxLive.friends("nicolasjensen")

# Returns a hash like:
{
		"Data": {
  		"TotalFriends": 8,
  		"TotalOnlineFriends": 0,
  		"TotalOfflineFriends": 8,
  		"Friends": [
    			{
      			"Gamertag": "cccav",
      			"AvatarSmall": "https:\/\/avatar-ssl.xboxlive.com\/avatar\/cccav\/avatarpic-s.png",
      			"AvatarLarge": "https:\/\/avatar-ssl.xboxlive.com\/avatar\/cccav\/avatarpic-l.png",
      			"GamerScore": 3520,
      			"IsOnline": false,
      			"PresenceInfo": {
        				"LastOnline": 1361044996,
        				"OnlineStatus": "Last seen 2\/16\/2013 playing LEGO\u00ae Star Wars\u00ae3 DEMO",
        				"Game": {
          "				Title": "LEGO\u00ae Star Wars\u00ae3 DEMO",
          				"Id": 1279363062,
          				"Url": "http:\/\/marketplace.xbox.com\/en-US\/Title\/1279363062"
        				}
      			}
    			},
    			{
      			"Gamertag": "Darth Randy BR",
      			"AvatarSmall": "https:\/\/avatar-ssl.xboxlive.com\/avatar\/Darth%20Randy%20BR\/avatarpic-s.png",
      			"AvatarLarge": "https:\/\/avatar-ssl.xboxlive.com\/avatar\/Darth%20Randy%20BR\/avatarpic-l.png",
      			"GamerScore": 54661,
      			"IsOnline": false,
      			"PresenceInfo": {
        				"LastOnline": 1361152914,
        				"OnlineStatus": "Last seen 2\/18\/2013 playing Xbox Dashboard",
        				"Game": {
          				"Title": "Xbox Dashboard",
          				"Id": 4294838225,
          				"Url": "http:\/\/marketplace.xbox.com\/en-US\/Title\/4294838225"
        				}
      			}
    			}
  		]
		},
		"Stat": "ok",
		"In": 4.371,
		"Authed": "false",
		"AuthedAs": null
}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
