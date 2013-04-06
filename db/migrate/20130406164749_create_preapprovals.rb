class CreatePreapprovals < ActiveRecord::Migration
  def change
    create_table :preapprovals do |t|
      t.string :file_name

      t.timestamps
    end
  end
end
