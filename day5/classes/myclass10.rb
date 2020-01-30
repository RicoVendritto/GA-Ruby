class Employee
  # attr_reader :name, :age
  # attr_writer :name, :age
  #
  # def print_info
  #   puts :name
  # end

  attr_accessor :name, :age

end

somebody = Employee.new
somebody.name = "Suresh"
p somebody.name
somebody.age = 26374853
p somebody.age
