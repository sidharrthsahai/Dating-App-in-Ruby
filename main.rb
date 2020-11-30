require_relative 'product.rb'


IO.foreach('shop.txt') do |line|
  data = line.split
  name = data[0]
  net_price = data[1].to_f
  count = data[2].to_i
  end

