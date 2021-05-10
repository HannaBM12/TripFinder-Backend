class TripsController < ApplicationController

    def index
        trips = Trip.all
        render json: trips, except:[:created_at, :updated_at]

    end

    def show
        trip = Trip.find_by(id: params[:id])
        render json: trip, except:[:created_at, :updated_at]
    end

  


end
