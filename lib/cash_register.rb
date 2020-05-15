class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []


  end

  def add_item(item, price, quanity = 1)
    @quanity = quanity
    @price = price
    if quanity > 1
      i = 0
      while i < quanity
        @items << item
        i += 1
      end
    else
      @items << item
    end

    @total += price * quanity
    @total
  end

  def apply_discount
    if @discount != 0
      @discount = (@discount.to_f / 100)
      @discount = @total.to_f * @discount
      @total = @total - @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    if @quanity > 1
      @total = @total.to_f - @price.to_f * @quanity
    else
      @total = @total.to_f - @price.to_f
    end

  end

end
