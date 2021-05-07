class AttractionsController < ApplicationController

    def index
        attractions = Attraction.all
        render json: attractions

    end

    def show
        attraction = Attraction.find_by(id: params[:id])
        render json: attraction
    end



end
