class Student

  @@ga_class = "SEI - Cheetahs"

  def initialize(name, id)
    @this_student_name = name
    @this_student_id = id
  end

  def self.change_ga_class(new_name)
    @@ga_class = new_name
  end

  def change_name
    puts "What's your name?"
    name = gets.strip.to_s
    @this_student_name = name
  end

  def print_info
    puts "#{@this_student_name} has this student id:\n #{@this_student_id} and is in the following cohort:\n #{@@ga_class}"
  end

end

john = Student.new("John", 24)
jack = Student.new("Jack", 33)
alice = Student.new("Eef", 35)

john.print_info
jack.print_info
alice.change_name
alice.print_info

Student.change_ga_class("SomethingSomething")

john.print_info
jack.print_info