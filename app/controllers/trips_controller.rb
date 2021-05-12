class TripsController < ApplicationController
<<<<<<< HEAD
    skip_before_action :authenticate, only: [:index, :show, :update]
=======
    skip_before_action :authenticate, only: [:index, :show]
>>>>>>> fe7d39235d29a1d62737416b3eec31b84c698c03
    

    def index
        trips = Trip.all
        render json: trips, except:[:created_at, :updated_at]

    end

    # def show
    #     trip = Trip.find_by(id: params[:id])
    #     render json: trip, except:[:created_at, :updated_at]
    # end

    def show
        trips = Trip.where(client_id: params[:id])
        render json: trips.to_json(:include => {
            :attraction => {:only => [:name, :image]}
        })
    end


   def create
        trips = Trip.create!(trip_params)
        render json: trips

    end
    
    def update
        #  byebug
        trip = Trip.find_by(id: params[:id])
        trip.update!(rating: params[:rating], reviews: params[:reviews])
        render json: trip
    end
#<ActionController::Parameters {"rating"=>"0.5", "reviews"=>"good", "controller"=>"trips", "action"=>"update", "id"=>"8", "trip"=>{"reviews"=>"good", "rating"=>"0.5"}} permitted: false>

    def destroy
        # byebug
        trip = Trip.find(params[:id])
       
        trip.destroy!

        render json: {}
    end

    private
    
    def trip_params
        params.permit(:date, :quantity, :reviews, :rating, :total, :attraction_id, :client_id)

    end

    def update_trip_params
        params.permit()
    end


end
