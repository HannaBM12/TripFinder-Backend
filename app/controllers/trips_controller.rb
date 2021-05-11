class TripsController < ApplicationController
    skip_before_action :authenticate, only: [:index, :show]
    def index
        trips = Trip.all
        render json: trips

    end

    # def show
    #     trip = Trip.find_by(id: params[:id])
    #     render json: trip
    # end

    def show
        trips = Trip.where(client_id: params[:id])
        render json: trips.to_json(:include => {
            :attraction => {:only => [:name, :image]}
        })
    end


end
