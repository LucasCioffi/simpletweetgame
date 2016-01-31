class Turn < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  belongs_to :local_participation_record
end
