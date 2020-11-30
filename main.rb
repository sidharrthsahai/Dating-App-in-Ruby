require_relative 'product.rb'
require_relative 'shop.rb'


shopvar = Shop.new
IO.foreach('shop.txt') do |line|
  data = line.split
  name = data[0]
  net_price = data[1].to_f
  count = data[2].to_i

  prod = Product.new(name, net_price, count)
  shopvar.add_product(prod)
  end

puts shopvar.to_s
