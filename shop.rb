

class Shop
  attr_accessor :products

  def initialize
    @products = []
  end

  def add_product(prod)
    @products << prod
  end

  def to_s
    @products = sortList
    @products.each do |prod|
      puts prod.to_s + "\n"
    end
    puts "Total value in shop:"
    puts "Average product price"
  end

  def sortList
    @products.sort_by {|obj| [obj.name]}
  end
end