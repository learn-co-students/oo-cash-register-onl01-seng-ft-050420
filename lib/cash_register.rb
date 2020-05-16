class CashRegister
    attr_accessor :total, :discount, :items, :latest_item
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def discount
        self.discount = 20
    end

    def add_item(title, price, quantity=1)
        @latest_item = price*quantity
        @total += price*quantity
        until quantity == 0
            @items << title
            quantity -=1
        end
    end

    def apply_discount
        if @discount != 0
            total_discount = (@total * @discount)/100  
            @total -= total_discount
             "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end
    
    def void_last_transaction
        @total -= @latest_item
        
    end
end
