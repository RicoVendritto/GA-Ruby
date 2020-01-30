# temp = File.dirname(__FILE__)
# puts temp
#
# File.open(File.dirname(__FILE__) + "/example.txt", "r") do |line|
#   line.readlines.each { |record|
#     puts record
#   }
# end
#
# file = File.open(File.dirname(__FILE__) + "/example.txt", "r")
# puts file.read
# file.close
#
# write = File.open(File.dirname(__FILE__) + "/example.txt", "w")
# write.write("ASH MONEY IN THE HOUSE!")
# write.close
#
#
# employees = []
#
# File.open(File.dirname(__FILE__) + "/example2.txt", "r") do |line|
#   employees = line.readlines
# end
#
# puts employees.class
#
# write = File.open(File.dirname(__FILE__) + "/write-ruby.txt", "w")
# write.write("Hello World")
# write.puts "Ash"
# write.puts "Money"
# write.puts "Henry"
# write.close
#
# names = %w(Casey Suresh Misha Shay)
# File.open(File.dirname(__FILE__) + "/example3.txt", "a") do |line|
#   names.each do |name|
#     line.puts name
#   end
# end
#
# name = %w[Ash Henry Richard Rico]
# age = 60, 33, 30, 26
#
# File.open(File.dirname(__FILE__) + "/example4.txt", "w") do | line |
#   name.zip(age).each { |student_name, student_age|
#     line.write "#{student_name} #{student_age}"
#     line.puts ''
#   }
# end
#
# file = File.open(File.dirname(__FILE__) + "/bank.txt", 'r')
#
# file.each_with_index do |content, index|
#   puts "#{content} #{index}"
# end