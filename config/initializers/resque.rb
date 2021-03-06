require 'mono_logger'

$redis = if ENV["REDISCLOUD_URL"]
           Redis.new(:url => ENV["REDISCLOUD_URL"])
         else
           resque_config = YAML.load(File.join(Rails.root, '/config/redis.yml'))
           resque_config[Rails.env]
         end

Dir["app/jobs/*.rb"].each { |file| require File.join(Rails.root, file) }
Resque.redis = $redis
Resque.logger = MonoLogger.new(File.open("#{Rails.root}/log/resque.log", "w+"))
