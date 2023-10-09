class CartsController < ApplicationController
  before_action :authenticate_user!

  # Display the contents of the shopping cart.
  def show
    @cart = current_user.cart
  end

  # Add a product to the cart.
  def add_to_cart
    product = Product.find(params[:product_id])
    current_user.cart.add_product(product)

    redirect_to cart_path, notice: "Product added to cart successfully."
  end

  # Update cart quantities.
  def update_cart
    product_id = params[:product_id]
    quantity = params[:quantity].to_i

    current_user.cart.update_quantity(product_id, quantity)

    redirect_to cart_path, notice: "Cart updated successfully."
  end

  # Display cart contents and initiate the checkout process.
  def checkout
    @cart = current_user.cart
    @total_price = @cart.calculate_total_price

    # For simplicity, we assume a successful checkout without payment processing.
    # In a real application, you would integrate with a payment gateway here.

    # Create an order record (simplified).
    order = current_user.orders.create(total_price: @total_price)

    # Add ordered products to the order (assuming cart items are products).
    @cart.cart_items.each do |cart_item|
      order.order_items.create(
        product_id: cart_item.product.id,
        quantity: cart_item.quantity,
        subtotal: cart_item.product.price * cart_item.quantity
      )
    end

    # Clear the user's cart.
    @cart.cart_items.destroy_all

    redirect_to order_path(order), notice: "Order placed successfully."
  end
end
