class ClientsController < ApplicationController
    skip_before_action :authenticate, only: [:create, :login]

    def create
      client = Client.create(
        name: params[:name],
        password: params[:password],
        age: params[:age],
        email: params[:email],
      )
  
      if client.valid?
        token = encode_token({ client_id: client.id })
  
        render json: { client: ClientSerializer.new(client), token: token }, status: :created
      else
        render json: { error: client.errors.full_messages }, status: :bad_request
      end
    end
    
  
    def login
      client = Client.find_by(name: params[:name])
    #   byebug
      if client && client.authenticate(params[:password])
        token = encode_token({ client_id: client.id })
  
        render json: { client: ClientSerializer.new(client), token: token }
        
        # render json: user # implicitly run serializer
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end
  
    # before_action :authenticate
    def autologin
      render json: @current_user
    end
  
    # before_action :authenticate
    def profile
      # byebug
      # find that use in the database (happens in the authenticate before_action)
      @current_user.update(age: params[:age], name: params[:name], email: params[:email])
      render json: @current_user
    end


    def index
        clients = Client.all
        render json: clients
    end

    def show
        client = Client.find_by(id: params[:id])
        render json: client
    end

    # def update
    #   byebug
    #   client = Client.find_by(id: params[:id])
    #   client.update(name: params[:name], email: params[:email], age: params[:age])
    # end




end
