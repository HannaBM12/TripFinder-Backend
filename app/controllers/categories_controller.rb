class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories

    end

    def show
        categorie = Category.find_by(id: params[:id])
        render json: categorie
    end

end
