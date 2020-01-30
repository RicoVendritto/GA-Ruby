class Square

  @this_leg_size = 0

  # setter
  def set_leg_size(size)
    @this_leg_size = size
  end

  # getter
  def get_square_surface
    @this_leg_size * @this_leg_size
  end

  def get_square_length
    @this_leg_size * 4
  end

end

new_circle = Square.new
new_circle.set_leg_size(2)
puts new_circle.get_square_length
puts new_circle.get_square_surface

class Circle

  @this_radius = 0

  # setter
  def set_radius(radius)
    @this_radius = radius
  end

  # getter
  def get_surface_circle
    Math::PI * @this_radius ** 2
  end

  def get_circumference_circle
    2 * Math::PI * @this_radius
  end

end

new_circle = Circle.new
new_circle.set_radius(5)
puts new_circle.get_surface_circle
puts new_circle.get_circumference_circle