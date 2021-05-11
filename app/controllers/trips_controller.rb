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


    def create

    end


    private
    
    def trip_params

    end


end
