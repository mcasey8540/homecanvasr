class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :last_name
      t.string :living_status
      t.string :move_timeframe

      t.timestamps
    end
  end
end
