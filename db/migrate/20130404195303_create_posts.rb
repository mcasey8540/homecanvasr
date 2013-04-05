class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :client_id
      t.integer :state_id
      t.integer :county_id
      t.integer :city_code
      t.integer :max_price
      t.integer :min_price
      t.integer :max_taxes
      t.integer :min_sq_ft
      t.integer :min_bed
      t.integer :min_bath
      t.boolean :attached_garage
      t.boolean :pool

      t.timestamps
    end
  end
end
