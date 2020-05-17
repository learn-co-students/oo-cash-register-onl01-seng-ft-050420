require "pry"
class CashRegister
  attr_accessor :discount, :total, :price, :items, :new_transaction
  #we needed to create this in order to get the discount set up to be accessed
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    end


    def add_item(title, price, optional_amount = 1) #this makes the default value 1
      self.total += price * optional_amount
      optional_amount.times do 
  	  @items << title
  	  end
  	  self.new_transaction = price * optional_amount
  	  end
    
    
    def apply_discount()
      if @discount > 0 #this says if you detect a discount because it is anything greater than 0
      @discount = @discount/100.to_f #this converts the discount into a percentage
      @total = @total - (@total * (@discount)) #this says have the total of the discount to equal the total price they have to pay minus the discount times whatever total it is for example $100 times 20%, then have the whole thing subtracted from the total amount
      "After the discount, the total comes to $#{@total.to_i}." #output this message then put the value of how much they owe into an integer format they can read
      else
      "There is no discount to apply."
      end
    end

      def void_last_transaction
         self.total -= self.new_transaction
      end
     
  
  end
  
  
  #We assign a new total to the amount and quantity. We populate our items array with each new item. And then we assign our new_transaction attribute to the new transaction that just took place.
  
#def void_last_transaction
        #add_item(title, price, optional_amount = 1) = total -= new_transaction
     
  	
  
    #end


