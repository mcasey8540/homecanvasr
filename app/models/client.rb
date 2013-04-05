class Client < ActiveRecord::Base
  attr_accessible :user_id, :last_name, :living_status, :move_timeframe
  belongs_to :user
end
