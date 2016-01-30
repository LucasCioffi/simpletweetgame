# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task "tweetstream:start" => :environment do
  tweetclient = TweetStream::Client.new
  puts "Tweetstream: starting"

  tweetclient.userstream do |status|

    puts "Tweet: #{status.text}"
    puts "Status: #{status.to_s}"
    Resque.enqueue(ProcessTweet, status)
  end
end