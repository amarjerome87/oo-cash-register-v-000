require 'pry'
class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity

def initialize (discount = nil)
  @total = 0
  @discount = discount
end

def add_item (title,price, quantity = 1)
  @title = title
  @price = price
  @quantity = quantity
  title_array = []
  @quantity.times do
    title_array << @title
  end
  self.total += @price * @quantity.to_i
end

def apply_discount(discount)
  @total
end

end
