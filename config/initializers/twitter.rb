# TWITTERCLIENT = Twitter::REST::Client.new do |config|
#   config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
#   config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
#   config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
#   config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
# end

# client = Twitter::REST::Client.new do |config|
# config.consumer_key        = "MIGOdJ1mPkhoYBIYVwe7F4Upo"
# config.consumer_secret     = "cMG0XF1OJQA2eJfcbzK2CyfKN6jfGAiOUCi7GENOjWuNiApoaJ"
# config.access_token        = "4862494972-Ye7qgtQI3lwBfWLFVjlGVUvpXNfRCWTGsIfZNAQ"
# config.access_token_secret = "3V5E5V0Q8hpM9W5HYAqOYS3eMAbvhY4wPYfUdXIJ14A6G"
# end
#
# client.user do |object|
# case object
# when Twitter::Tweet
# puts "It's a tweet!"
# when Twitter::DirectMessage
# puts "It's a direct message!"
# when Twitter::Streaming::StallWarning
# warn "Falling behind!"
# end
# end

# require 'tweetstream'
# TweetStream.configure do |config|
# config.consumer_key       = "MIGOdJ1mPkhoYBIYVwe7F4Upo"
# config.consumer_secret    = "cMG0XF1OJQA2eJfcbzK2CyfKN6jfGAiOUCi7GENOjWuNiApoaJ"
# config.oauth_token        = "4862494972-Ye7qgtQI3lwBfWLFVjlGVUvpXNfRCWTGsIfZNAQ"
# config.oauth_token_secret = "3V5E5V0Q8hpM9W5HYAqOYS3eMAbvhY4wPYfUdXIJ14A6G"
# config.auth_method        = :oauth
# end
# TweetStream::Client.new.sample do |status|
# puts "#{status.text}"
# end
