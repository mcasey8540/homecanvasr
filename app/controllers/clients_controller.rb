class ClientsController < ApplicationController
	
	def new 
		@client = Client.new
	end

  def create
    @user = current_user
    @client = @user.clients.new(params[:client])
    if @client.save
    	redirect_to clients_path
    else
      redirect_to new_client_path
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
