class ClientsController < ApplicationController
	
	def new 
		@client = Client.new
    @client.build_preapproval
	end

  def create
    @client = current_user.clients.new(params[:client])
    if @client.save
    	redirect_to clients_path, :notice => "New client added successfully"
    else
      redirect_to new_client_path, :notice => "Please fill out all fields"
    end
  end

  def index
    @clients = current_user.clients
  end

  def destroy
    @client = Client.find(params[:id])
    Client.destroy(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
    if @client.save
      redirect_to clients_path
    end
  end
	
end
