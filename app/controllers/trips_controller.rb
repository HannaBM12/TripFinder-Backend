class TripsController < ApplicationController
    skip_before_action :authenticate, only: [:index, :show]

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

    # def show
    #     trips = Trip.where(client_id: params[:id])
    #     render json: trips.to_json(:include => {
    #         :attraction => {:only => [:name, :image]}
    #     })
    # end


   def create
        trips = Trip.create!(trip_params)
        render json: trips

    end

    def create
        trips = Trip.create!(trip_params)
        render json: trips

    end

    def destroy
        byebug
        trip = trip.find(params[:id])
        trip.destroy!

        render json: {}
    end

    private
    
    def trip_params
        params.permit(:date, :quantity, :reviews, :rating, :total, :attraction_id, :client_id)

    end


end
