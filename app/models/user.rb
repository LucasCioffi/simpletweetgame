class User < ActiveRecord::Base
  has_many :local_participation_records
end
