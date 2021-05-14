class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, include: [:city]
    end

    def create
        new_item = Review.create(review_params)
        render json: new_item
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
    end

    def delete
        review = Review.find_by(id: params[:id])
        review.destroy
    end

    private

    def review_params
        params.require(:review).permit(:name, :location, :points, :category, :image)
    end
end
