class UsersController < ApplicationController
  
  # Display registration form for creating a new user account.
  def new
    @user = User.new
  end

  # Display form for editing user account details (for logged-in users).
  def edit
    @user = current_user # Load the logged-in user
  end

  # Show user profile and order history (for logged-in users).
  def show
    @user = current_user # Load the logged-in user 
    @orders = @user.orders # Retrieve user's orders
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end
end
