require "test_helper"
require "devise"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @product = products(:one)
    @update = {
      title: "Lorem Ipsum",
      description: "Wibbles are fun!",
      image_url: "lorem.jpg",
      price: 19.95
    }
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  # test 'should create product' do
  #   assert_difference('Product.count') do
  #     post products_url, params: { product: @update }
  #   end
  #   assert_redirected_to product_url(Product.last)
  # end
  

  # ... (other tests)

  test "should update product" do
    put product_url(@product), params: { product: @update }
    assert_redirected_to product_path(assigns(:product))
  end

  # ... (other tests)
end
