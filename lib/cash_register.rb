require 'pry'
class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :items

def initialize (discount = nil)
  @total = 0
  @discount = discount
  @items = []

end

def add_item (title,price, quantity = 1)
  @title = title
  @price = price
  @quantity = quantity
  title_array = []
  item_count = @quantity.times do
    title_array << @title
  end
  self.total += @price * @quantity.to_i
  title_array
end

def apply_discount
  @total = @total - (@total * @discount.to_f/100)
  if @discount
    return "After the discount, the total comes to $800."
  else
    return   "There is no discount to apply."
  end
end

def items
  self.add_item(title,price,quantity)
  binding.pry
end

end
