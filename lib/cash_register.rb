require 'pry'
class CashRegister
 attr_accessor :total, :items, :discount, :price, :quantity

 def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = []
 end

 def add_item(title, price, quantity=1)
   @price = price
   @quantity = quantity
    self.total= self.total + (price*quantity)
    quantity.times {@items<< title}
    
 end

 def apply_discount
   if discount != 0
    discount_amount= @discount.to_f*0.01
    total_discount= (total*discount_amount).to_i
    self.total= total-total_discount
    "After the discount, the total comes to $#{self.total}."
   else
    "There is no discount to apply."
   end
 end
 def void_last_transaction
    if @items == []
      self.total = 0.0
    else  
      last_transaction= @price*@quantity
      self.total= self.total - last_transaction
   end
 end

end