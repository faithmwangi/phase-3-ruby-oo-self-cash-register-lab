class CashRegister

    attr_reader :discount
    attr_accessor :total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end
    def add_item(title, price, amount = 1)
        @total += price * amount
    end
    def apply_discount
        if discount > 0
          discount_amount = @total * @discount / 100
          @total -= discount_amount
          "After the discount, the total comes to $#{@total}."
        else
          "There is no discount to apply."
        end
    end 
   
end


