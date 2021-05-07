class TripsController < ApplicationController

    def index
        trips = Trip.all
        render json: trips

    end

    def show
        trip = Trip.find_by(id: params[:id])
        render json: trip
    end

end
