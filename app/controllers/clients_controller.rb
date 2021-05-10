class ClientsController < ApplicationController

    def index
        clients = Client.all
        render json: clients, except:[:created_at, :updated_at]

    end

    def show
        client = Client.find_by(id: params[:id])
        render json: client, except:[:created_at, :updated_at]
    end
end
