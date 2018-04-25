require 'pry'
class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity

def initialize (discount = nil)
  @total = 0
  @discount = discount
end

def add_item (title,price, quantity = nil)
  @title = title
  @price = price
  @quantity = quantity
  title_array = []
  title_array << @title
  self.total += @price 
end

end
