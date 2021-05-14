class CitiesController < ApplicationController

    def index
        citys = City.all
        render json: cities
    end

    def create
        new_item = City.create(city_params)
        render json: new_item
    end

    def update
        city = City.find(params[:id])
        city.update(city_params)
        render json: city
    end

    def delete
        city = City.find_by(id: params[:id])
        city.destroy
    end

    private

    def city_params
        params.require(:city).permit(:name, :state, :image)
    end
end
