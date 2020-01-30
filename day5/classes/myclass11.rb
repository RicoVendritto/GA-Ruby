class Owl
  def initialize(kingdom, phylum, size, color)
    @this_kingdom = kingdom
    @this_phylum = phylum
    @this_size = size
    @this_color = color
  end
  attr_accessor :name
end

class NewOwl < Owl

end

rico = NewOwl.new("Animalia", "Chordata", "500lbs", "pink")
rico.name = "Rico"
p rico.name

