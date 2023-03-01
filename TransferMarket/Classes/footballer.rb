
class Footballer
  def set_name(name)
    raise TypeError unless name.kind_of? String
    @name = name
  end
  def get_name
    @name
  end
  def set_price(price)
    raise TypeError unless price.kind_of? Integer
    @price = price
  end
  def get_price
    @price
  end
end