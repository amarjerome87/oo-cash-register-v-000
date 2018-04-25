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

def apply_discount
  @total = @total - (@total * @discount.to_f/100)
    return "After the discount, the total comes to $800."
  if @discount = nil
    return  "There is no discount to apply."
  end
end

end
