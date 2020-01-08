class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, qty)
    @ingredients_required[ingredient] = qty
  end

  def amount_required(ingredient)
    @ingredients_required[ingredient]
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
      total_cal = @ingredients_required.map do |ingredient|
        ingredient[0].calories * @ingredients_required[ingredient[0]]
      end
      total_cal.sum
  end
end
