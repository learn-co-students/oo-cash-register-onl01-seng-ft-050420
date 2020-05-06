require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :prices, :quantities
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
    @quantities = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    quantity.times {@prices << price}
    @quantities << quantity
  end
  
  def apply_discount
    @total -= @total * @discount/100
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end
  
  def void_last_transaction
    @total -= @quantities.pop * @prices.pop
  end
    
end
