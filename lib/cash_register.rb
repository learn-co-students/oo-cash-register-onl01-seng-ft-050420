require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item_name, price, quantities = 1)
    @total += price * quantities
    quantities.times do
      @items << item_name
    end
    @last_transaction = (price * quantities)
  end

  def apply_discount
    if discount != 0
      @total = (@total - ((@total * @discount.to_f)/100)).to_i
      #binding.pry
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
