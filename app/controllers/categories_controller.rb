class CategoriesController < ApplicationController
  # List of all product categories.
  def index
    @categories = Category.all
  end

  # Form for creating a new category.
  def new
    @category = Category.new
  end

  # Form for editing an existing category.
  def edit
    @category = Category.find(params[:id])
  end

  # Detailed view of a category.
  def show
    @category = Category.find(params[:id])
  end

  # Confirmation page for deleting a category.
  def destroy
    @category = Category.find(params[:id])
  end
end
