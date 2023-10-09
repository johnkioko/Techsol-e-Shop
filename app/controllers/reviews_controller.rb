class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:show] # Ensure user is logged in for new and edit actions

  # Display a form for adding a new product review (for logged-in users).
  def new
    @review = Review.new
  end

  # Display a form for editing an existing product review (for the review owner).
  def edit
    @review = Review.find(params[:id])
    unless current_user == @review.user
      flash[:alert] = "You are not authorized to edit this review."
      redirect_to root_path
    end
  end

  # Show details of a specific product review.
  def show
    @review = Review.find(params[:id])
  end
end
