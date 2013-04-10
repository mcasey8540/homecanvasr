class CreatePreapprovals < ActiveRecord::Migration
  def change
    create_table :preapprovals do |t|
      t.string :file_name
      t.integer :client_id
      t.timestamps
    end
  end
end
