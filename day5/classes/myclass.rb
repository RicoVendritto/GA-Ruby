class House

  def set_address
    puts "setting address"
  end

  def open_doors
    puts "door is open"
  end

  def close_doors
    puts "door is closed"
  end

end

my_house = House.new
your_house = House.new

my_house.set_address
my_house.open_doors
my_house.close_doors
