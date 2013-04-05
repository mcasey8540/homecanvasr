class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :county_id
      t.integer :city_code
      t.string :name

      t.timestamps
    end
  end
end
