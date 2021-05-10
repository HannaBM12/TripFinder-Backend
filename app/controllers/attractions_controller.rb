class AttractionsController < ApplicationController

    def index
        attractions = Attraction.all
        render json: attractions, except:[:created_at, :updated_at]

    end

    def show
        attraction = Attraction.find_by(id: params[:id])
        render json: attraction, except:[:created_at, :updated_at]
    end



end
