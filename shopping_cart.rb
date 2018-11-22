require "./product.rb"

class ShoppingCart

  # Class Variable
  @@products = []

  # Class Method's
  def self.add_product(product)
    @@products << product
    return @@products
  end

  def most_expensive
    return (@@products.sort)[0]

  end

  def self.show_full_products
    product_details = []
    @@products.each do | product |
      product_details << "Product name: #{product.name}, Price: #{product.base_price}, Tax: #{product.tax_rate},
      Total Price: #{product.total_price}"
    end
    return product_details
  end

  # Product Reader
  def self.products
    return @@products
  end

  # More Class Method's

  def self.remove_product(product)
    @@products.delete(product)
    return @@products
  end

  def self.total_before_tax
    before_tax = 0
    @@products.each do | product |
      before_tax += product.base_price
    end
      return before_tax
  end

  def self.total_after_tax
    after_tax = 0
    @@products.each do | product |
      after_tax += product.total_price
    end
      return after_tax



  end
end
