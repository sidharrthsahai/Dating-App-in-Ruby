

class Shop
  attr_reader :products

  def initialize
    @products = []
  end

  def add_product(prod)
    @products << prod
  end

  def to_s
    str = "Products in Shop: \n"
    @products.each do |prod|
      str += prod.to_s + "\n"
    end
  end
end