class CommentsController < ApplicationController
    def index
        commentss = Comment.all
        render json: commentss, include: [:user, :review]
    end

    def create
        new_item = Comment.create(comments_params)
        render json: new_item
    end

    def update
        comments = Comment.find(params[:id])
        comments.update(comments_params)
        render json: comments
    end

    def delete
        comments = Comment.find_by(id: params[:id])
        comments.destroy
    end

    private

    def comments_params
        params.require(:comments).permit(:text)
    end
end
