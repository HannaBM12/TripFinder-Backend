class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories, except:[:created_at, :updated_at]
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: category, except:[:created_at, :updated_at]
    end

end
