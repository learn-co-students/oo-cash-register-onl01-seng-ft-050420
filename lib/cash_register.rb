
require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :last_item_price
  
  @@last_item_price = 0
  
  
  def initialize( discount = 0 )
    @total = 0
    @discount = discount
    @items = []
    
    
  end
  
  def total
    @total 
  end
  
  
  def add_item(title, price, quantity = 1 )
    
    
    quantity.times { @items << title }
    @@last_item_price = price * quantity
    price_items = price.to_f * quantity.to_i
    @total = @total + price_items
    
    price_items
    
   
  end
  
 
  
  def apply_discount
      
    if @discount != 0 
      @total = @total - (@total*@discount/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
     return "There is no discount to apply."
      
    end 
   
  end

  
  def items
    @items
  end
  
  
  
  def void_last_transaction
    
    @total = @total - @@last_item_price
  end
      
end
