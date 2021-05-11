class AttractionsController < ApplicationController
    skip_before_action :authenticate, only: [:index, :show]
    def index
        attractions = Attraction.all
        render json: attractions

    end

    def show
        attraction = Attraction.find_by(id: params[:id])
        render json: attraction
    end



end
