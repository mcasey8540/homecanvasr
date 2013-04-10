class Preapproval < ActiveRecord::Base
  attr_accessible :file_name 
  belongs_to :client
end
