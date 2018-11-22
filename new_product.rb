require "./shopping_cart.rb"

class Product

  # Instance Method
  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

  def total_price
    return (@base_price * (1 + @tax_rate)).round(2)
  end

  # Readers
  def name
    return @name
  end

  def base_price
    return @base_price
  end

  def tax_rate
    return @tax_rate
  end
end


bread = Product.new("Bread", 4, 0.10)
avocado = Product.new("Avocado", 3, 0.17)
rice = Product.new("Brown Rice", 6, 0.14)

ShoppingCart.add_product(bread)
ShoppingCart.add_product(avocado)
# puts ShoppingCart.show_full_products

puts ShoppingCart.total_before_tax
puts ShoppingCart.total_after_tax
