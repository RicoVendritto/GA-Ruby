class Recipe

  def cook
    puts "I'm cooking something special for ya my mate."
  end
end

class Fish < Recipe

  def cook
    super
    puts "Inside the outside"
  end
end

my_food = Fish.new
my_food.cook