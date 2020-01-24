#x = 10
#y = 5
#
#if x == y
#  puts("x is same as y")
#else
#  puts("x is not the same as y")
#end
#
#items = %w(item1 item2 item3 item4 item5)
#puts(items)
#puts(items.class)
#
#stock = 100
#
#if stock < 1
#  puts "Sorry we're out of stock"
#elsif stock == 10
#  puts "Discount"
#else
#  puts "Thank you for shopping"
#end
#
#name = "JoHn"
#email = "JoHn@GMail.CoM"
#
#if name.downcase == "john" && email.downcase == "john@gmail.com"
#  puts "Damn right it's John"
#else
#  puts "No Shit you gave us the wrong credentials mate!"
#end

#name = gets
#puts name

#puts 123 if 2.even?

#grade = gets.strip
#grade = $stdin.gets.strip
#grade = grade.to_s.upcase
#puts(grade)
#puts(grade.class)
#if grade == "A"
#  puts "Your GPA is 4.0"
#elsif grade == "A-"
#  puts "Your GPA is 3.7"
#elsif grade == "B+"
#  puts "Your GPA is 3.3"
#elsif grade == "B"
#  puts "Your GPA is 3.0"
#elsif grade == "B-"
#  puts "Your GPA is 2.7"
#elsif grade == "C+"
#  puts "Your GPA is 2.3"
#elsif grade == "C"
#  puts "Your GPA is 2.0"
#elsif grade == "D"
#  puts "You GPA is 1.0"
#elsif grade == "F"
#  puts "Your GPA is 0.0"
#else
#  puts "Invalid entry"
#end

puts("Course 1")
course1 = gets.strip.downcase
puts("Point value course 1")
points1 = gets.strip.to_f
puts("Credits value course 1")
credits1 = gets.strip.to_i
puts("Course 2")
course2 = gets.strip.downcase
puts("Point value course 2")
points2 = gets.strip.to_f
puts("Credits value course 2")
credits2 = gets.strip.to_i
puts("Course 3")
course3 = gets.strip.downcase
puts("Point value course 3")
points3 = gets.strip.to_f
puts("Credits value course 3")
credits3 = gets.strip.to_i

puts(course1, course2, course3)
puts(points1, points2, points3)
puts(credits1, credits2, credits3)

def points_qp(points)
  if points > 92
    return 4.0
  elsif points > 88.9 && points < 93
    return 3.7
  elsif points > 86.9 && points < 89
    return 3.3
  elsif points > 82.9 && points < 87
    return 3.0
  elsif points > 79.9 && points < 83
    return 2.7
  elsif points > 76.9 && points < 80
    return 2.3
  elsif points > 69.9 && points < 77
    return 2.0
  elsif points > 59.9 && points < 70
    return 1.0
  elsif points < 60
    return 0
  else
    puts "false entry mate!"
  end
end

qp1 = points_qp(points1)
qp2 = points_qp(points2)
qp3 = points_qp(points3)

puts(qp1, qp2, qp3)

totalCreditCourses = (qp1 * credits1) + (qp2 * credits2) + (qp3 * credits3)

totalCredit = credits1 + credits2 + credits3

GPA = totalCreditCourses / totalCredit
puts("GPA: #{GPA}")