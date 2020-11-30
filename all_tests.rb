require 'test/unit'
require_relative 'product.rb'

class ProductTest < Test::Unit::TestCase
  def setup
    @test_product = Product.new("Test", 55, 10)
  end

  def test_initialize_name
    assert_equal("Test", @test_product.name)
  end

  def test_initialize_net_value
    assert_equal(55, @test_product.net_price)
  end

  def test_initialize_count
    assert_equal(10, @test_product.count)
  end

  def test_gross_price
    assert_equal(55, @test_product.gross_price)
  end
end