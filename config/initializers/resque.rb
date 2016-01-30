require 'mono_logger'

Dir["app/jobs/*.rb"].each { |file| require File.join(Rails.root, file) }
Resque.logger = MonoLogger.new(File.open("#{Rails.root}/log/resque.log", "w+"))