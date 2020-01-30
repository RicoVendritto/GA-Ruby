class Student

  @this_student_name = ''
  @this_student_id = ''

  def initialize(name)
    puts "Hej, student! What's your name?"
    @this_student_name = name
    @this_student_id = rand(999)
  end

  def set_student_name (name)
    @this_student_name = name
  end

  def set_student_id (id)
    @this_student_id = id
  end

  def get_student_name
    @this_student_name
  end

  def get_student_id
    @this_student_id
  end

end

ash = Student.new("$ash Money")
rico = Student.new("Rico V")

puts ash.get_student_name
puts ash.get_student_id

puts rico.get_student_name
puts rico.get_student_id