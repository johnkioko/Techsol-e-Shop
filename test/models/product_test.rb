require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def new_product(image_url)
    Product.new(title: "Agile web development with rails",
    description: Rails 7 completely redefines what it means to produce fantastic user experiences and provides a way to achieve all the benefits of single-page applications - at a fraction of the complexity",
    price: 1,
    image_url: image_url)
    end
    test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
    http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |image_url|
    assert new_product(image_url).valid?,
    "#{image_url} must be valid"
    end
    bad.each do |image_url|
    assert new_product(image_url).invalid?,
    "#{image_url} must be invalid"
    end
    end

    
    
end
