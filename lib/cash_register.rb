class CashRegister
    attr_accessor :total, :discount, :items, :final_tran
 def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
 end 

 def add_item(product, price, qty = 1)
    self.total += price * qty
    qty.times do
        items << product 
    end
    self.final_tran = price * qty 
end

 def apply_discount
    if discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
 end

 def void_last_transaction
    self.total = self.total - self.final_tran 
 end

end
