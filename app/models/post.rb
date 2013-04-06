class Post < ActiveRecord::Base
  attr_accessible :attached_garage, :state_id, :county_id, :city_code, :client_id, :max_price, :max_taxes, :min_price, :min_bath, :min_bed, :min_sq_ft, :pool, :user_id

  validates :client_id, :city_code, :state_id, :county_id, :max_price, :min_price, :max_taxes, :min_sq_ft, :presence => true
  
  belongs_to :user
  has_one :client

  def client_name
  	Client.where("id = ?", client_id) ? Client.where("id = ?", client_id).first.last_name : "Client Name"
  end

	def state_name
 		State.where("id = ?", state_id).first.name 
 	end

	def county_name
 		County.where("id = ?", county_id).first.name 
 	end

 	def city_name
 		City.where("city_code = ?", city_code).first.name 
 	end	

end
