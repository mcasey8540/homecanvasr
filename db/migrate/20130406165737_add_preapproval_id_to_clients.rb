class AddPreapprovalIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :preapproval_id, :integer
  end
end
