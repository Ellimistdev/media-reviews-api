class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show update destroy]
  before_action :authenticate_user, only: %i[create update destroy]

  def show
    render json: @review
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content, :rating, :user_id, :movie_id)
    end
end
