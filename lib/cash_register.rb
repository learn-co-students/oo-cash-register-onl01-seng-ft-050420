require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1 )
    line_qty = []
    @line_qty = line_qty
    @line_qty << quantity
    line_price = []
    @line_price = line_price
    @line_price << price
    @total = @total + price * quantity
    @title = title
    @items = @items.fill(@title, @items.size, quantity)
  end


  def apply_discount
    percent = discount.to_f*0.01
    employee_d = @total * percent
    @total = @total - employee_d
    @total = @total.to_i
      if @total > 0
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
    end
  end

  def items
    @items
   end

  def void_last_transaction
    last_price = @line_price.join().to_f
    last_qty = @line_qty.join().to_f
    last_item = last_qty * last_price
    @total = @total - last_item
  end


end
