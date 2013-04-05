require 'csv'

namespace :db do
  desc "Drop, create, migrate then seed the City table"
  task :seed_city => :environment do 

  	CSV.foreach("#{Rails.root}/data/nj_cities.csv") do |row|
			City.create!(
				:county_id=>row[0],
				:name=>row[2],
				:city_code=>row[1]
			)
		end
	end	
end 