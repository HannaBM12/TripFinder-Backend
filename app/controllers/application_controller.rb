class ApplicationController < ActionController::API
    before_action :authenticate

    def encode_token(payload)
      JWT.encode(payload, '5ome5ecret5', 'HS256')
    end
  
    def decode_token(token)
      JWT.decode(token, '5ome5ecret5', true, { algorthim: 'HS256' })[0]
    end
  
    def authenticate
      
      # JWT.decode will throw an error if decoding doesn't succeed
      # so we need to handle the error so our app doesn't crash
      begin
        # decode token using JWT library
        payload = decode_token(get_auth_token)
        
        # get the user_id from the decoded token and use it to
        # set an instance variable for the current user
        set_current_user!(payload["client_id"])
      rescue
        render json: { error: "Invalid Request" }, status: :unauthorized
      end
    end
  
    private
  
    def get_auth_token
      auth_header = request.headers['Authorization']    
      auth_header.split(' ')[1] if auth_header
    end
  
    def set_current_user!(id)
      @current_user = Client.find(id)
    end
  
end
