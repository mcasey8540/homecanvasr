class Client < ActiveRecord::Base
  attr_accessible :user_id, :last_name, :living_status, :move_timeframe, :preapproval_attributes
  belongs_to :user
  has_one :preapproval

  validates :user_id, :last_name, :living_status, :move_timeframe, presence: :true  

  accepts_nested_attributes_for :preapproval
end
