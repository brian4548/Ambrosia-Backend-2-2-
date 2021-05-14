class EstablishmentsController < ApplicationController
    def index
        establishments = Establishment.all
        render json: establishments, include: [:user, :review]
    end

    def create
        new_item = Establishment.create(establishment_params)
        render json: new_item
    end

    def update
        establishment = Establishment.find(params[:id])
        establishment.update(establishment_params)
        render json: establishment
    end

    def delete
        establishment = Establishment.find_by(id: params[:id])
        establishment.destroy
    end

    private

    def establishment_params
        params.require(:establishment).permit(:description, :price, :date)
    end
end
