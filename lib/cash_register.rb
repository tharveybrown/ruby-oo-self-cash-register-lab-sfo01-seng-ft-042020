require 'pry'
class CashRegister

  attr_accessor :discount, :total, :last_item
  attr_reader :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do 
      @items << title
    end
    self.total += price * quantity
    self.last_item = price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total -= (self.total  * discount)/100
      return "After the discount, the total comes to $#{self.total}."
    else 
      return "There is no discount to apply."
    end
  end

  def void_last_transaction    
    self.total -= self.last_item
  end
end
