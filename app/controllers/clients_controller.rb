class ClientsController < ApplicationController

    def index
        clients = Client.all
        render json: clients, except:[:created_at, :updated_at]

    end

    def show
        client = Client.find_by(id: params[:id])
        render json: client, except:[:created_at, :updated_at]
    end

    def create
        @user = Client.create(client_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user)}, status: :created
        else
            render json: { error: 'failed to create user'}, status: :bad_request
    end
end

    private
    def user_params
        params.require(:user).permit(:name, :email, :age, :password)
    end

end
