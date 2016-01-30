# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :tweetstream do
  task :start => :environment do
    puts "Tweetstream: starting"
    TweetStream::Client.new.sample do |status|
      Resque.enqueue(ProcessTweet, status)
      render :text => "Tweet: #{status}"
    end
  end
end
