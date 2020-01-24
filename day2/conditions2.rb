letters = []
course_name = %w(JAVA Python Ruby JavaScript)
grades = []

course_name.each_with_index { |course, index|
  puts "Enter the grade for #{course}"
  grades.append(gets.chomp.to_i)

  if grades[index] > 92
    letters.append("A")
  elsif grades[index] > 88.9 && grades[index] < 93
    letters.append("A-")
  elsif grades[index] > 86.9 && grades[index] < 89
    letters.append("B+")
  elsif grades[index] > 82.9 && grades[index] < 87
    letters.append("B")
  elsif grades[index] > 79.9 && grades[index] < 83
    letters.append("B-")
  elsif grades[index] > 76.9 && grades[index] < 80
    letters.append("C+")
  elsif grades[index] > 69.9 && grades[index] < 77
    letters.append("C")
  elsif grades[index] > 59.9 && grades[index] < 70
    letters.append("D")
  elsif grades[index] < 60
    letters.append("F")
  end
}

puts(course_name)
puts(grades)
puts(letters)