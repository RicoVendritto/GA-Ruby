class House
  # creating instance variable
  @this_owner_name = ''
  @this_address = ''

  # setters
  def set_address(address)
    @this_address = address
  end

  def set_owner_name(name)
    @this_owner_name = name
  end

  # getters
  def get_address
    @this_address
  end

  def get_owner_name
    @this_owner_name
  end

end

ash_house = House.new

ash_house.set_owner_name("$ash King")
ash_house.set_address("5th Ave")

puts ash_house.get_address
puts ash_house.get_owner_name

my_house = House.new

my_house.set_address("1139 49th Ave")
my_house.set_owner_name("Richard Braamburg")

puts my_house.get_address
puts my_house.get_owner_name