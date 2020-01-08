class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(item)
    # require "pry"; binding.pry
    if @stock[item] == nil
      0
    else
      @stock[item]
    end
  
  end

  def restock(item, qty)
    @stock[item] = self.stock_check(item) + qty
  end

  def enough_ingredients_for?(recipe)
    require "pry"; binding.pry
    # if @stock == requirement true else
    false
  end

end
