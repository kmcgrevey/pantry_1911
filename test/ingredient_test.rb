require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test

  def test_it_exists
    ingredient = Ingredient.new("Cheese", "oz", 50)

    assert_instance_of Ingredient, ingredient
  end
end
# pry(main)> require './lib/ingredient'
# # => true
#
# pry(main)> ingredient = Ingredient.new("Cheese", "oz", 50)
# # => #<Ingredient:0x007fe6041273d8...>
#
# pry(main)> ingredient.name
# # => "Cheese"
#
# pry(main)> ingredient.unit
# # => "oz"
#
# pry(main)> ingredient.calories
# # => 50
