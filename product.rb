class Product
  attr_reader :name, :net_price, :count
  def initialize(name, net_price, count)
    @name, @net_price, @count = name, net_price, count
  end

  def net_price
    return @net_price
  end

  def gross_price
    return (@net_price + (@net_price * 10/100))
  end

  def to_s
    str = gross_price
    "#{name} €#{str} "
  end

end