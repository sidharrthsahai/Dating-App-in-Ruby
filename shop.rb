

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
    net_value = 0.00
    avg_gross_value = 0.00
    @products.each do |prod|
      puts prod.to_s + "\n"
      net_value += (prod.net_price + prod.count)
      avg_gross_value += prod.gross_price
    end

    puts "Total value in shop: €#{net_value} \n"
    puts "Average product price: €#{avg_gross_value / (@products.length())} \n"
  end

  def sortList
    @products.sort_by {|obj| [obj.name]}
  end
end