class AdminController < ApplicationController
  before_action :authenticate_admin!

  def index
    @products = Product.all
    @categories = Category.all
    @orders = Order.all
  end

  def new
    # Placeholder for creating a new product or category.
    # Example for creating a new product:
    # @product = Product.new
  end

  def create
    # Placeholder for creating a new product or category based on form data.
    # Example for creating a new product:
    # @product = Product.new(product_params)
    # if @product.save
    #   redirect_to admin_index_path, notice: "Product created successfully."
    # else
    #   render :new
    # end
  end

  def edit
    # Placeholder for editing an existing product or category.
    # Example for editing a product:
    # @product = Product.find(params[:id])
  end

  def update
    # Placeholder for updating an existing product or category based on form data.
    # Example for updating a product:
    # @product = Product.find(params[:id])
    # if @product.update(product_params)
    #   redirect_to admin_index_path, notice: "Product updated successfully."
    # else
    #   render :edit
    # end
  end

  def show
    # Placeholder for displaying details of an admin-related resource (e.g., showing product or category details).
    # Example for showing a product:
    # @product = Product.find(params[:id])
  end

  def destroy
    # Placeholder for deleting an existing product or category.
    # Example for deleting a product:
    # product = Product.find(params[:id])
    # product.destroy
    # redirect_to admin_index_path, notice: "Product deleted successfully."
  end

  private

  # Define strong parameters for admin-related resource (e.g., product or category).
  # Example for strong parameters for a product:
  # def product_params
  #   params.require(:product).permit(:name, :description, :price, ...)
  # end
end
