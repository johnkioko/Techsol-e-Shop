class ProductsController < ApplicationController
  # Display a list of products.
  def index
    @products = Product.all
  end

  # Show details of a specific product.
  def show
    @product = Product.find(params[:id])
  end

  # Display a form for creating a new product (for admin users).
  def new
    @product = Product.new
  end

  # Display a form for editing an existing product (for admin users).
  def edit
    @product = Product.find(params[:id])
  end

  # Display search results for products.
  def search
    # Implement product search logic (if applicable)
  end

  # Display detailed search results.
  def results
    # Implement logic to show detailed search results (if applicable)
  end
end
