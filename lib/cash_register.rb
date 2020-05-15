class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = nil)
    @total = 0.00
    @discount = discount
    @items = []
    @last = [] # Necessary? Probably not.
  end

  def add_item(title, price, quantity = 1)
    @price = price
    self.total += price * quantity
    quantity.times { items << title }
    self.last = price * quantity
  end

  def apply_discount
    if @discount
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i  # 1000 * 0.8 coerced to integer.
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last
  end
end