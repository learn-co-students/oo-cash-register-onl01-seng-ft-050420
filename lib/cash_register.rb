
class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [] 
    end 

    def add_item(item, price, quantity = 1)
        if quantity > 1
            i = 0 
            while i < quantity
                @items << item
                i += 1
            end 
        else 
            @items << item 
        end 
        self.total += price*quantity
        self.last_transaction = price * quantity  
        
    end 

    def apply_discount
        if discount > 0
            self.total = (total * ((100 - @discount.to_f)* 0.01)).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end 
    end  

    def items 
        @items 
    end 

    def void_last_transaction
        self.total -= self.last_transaction
    end 
end 