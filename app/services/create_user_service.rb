class CreateUserService
  attr_accessor :tweet

  def initialize(tweet)
    @tweet = tweet
  end

  def execute
    tweet_user = tweet['user']
    username = tweet_user['screen_name']
    user = User.create!(username: username)
  end

end
