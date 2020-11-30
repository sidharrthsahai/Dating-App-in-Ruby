class Product
  def initialize(name, net_price, count)
    @name, @net_price, @count = name, net_price, count
  end

  def net_price
    return @net_price
  end

  def gross_price
    return (@net_price + (@net_price * 0.01))
  end

  def to_s
    "#{name}, "
  end

end