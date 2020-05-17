class CashRegister
  attr_accessor :total, :discount, :items, :last
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, price, qty=1)
    @total = @total + (price*qty)
    @last = {:title => title, :qty => qty, :price => price}
    i = 0
    while i < qty do
      @items << title
      i+=1
    end
  end 
  def apply_discount
    if discount == 0 
      return "There is no discount to apply."
    else
      @total = @total - (discount.to_f / 100 * @total).to_i
      return "After the discount, the total comes to $#{total}."
    end
  end
  def void_last_transaction
    @total = @total - (@last[:price] * @last[:qty])
    @items.pop(@last[:qty])
  end
end