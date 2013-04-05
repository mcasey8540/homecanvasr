class Post < ActiveRecord::Base
  attr_accessible :attached_garage, :state_id, :county_id, :city_code, :client_id, :max_price, :max_taxes, :min_price, :min_bathrooms, :min_bed, :min_sq_ft, :pool, :user_id

  validates :max_price, :min_price, :max_taxes, :min_sq_ft, presence: :true
  
  belongs_to :user

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
