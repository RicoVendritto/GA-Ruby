name = "John"

puts(name.object_id)
puts("name".object_id)
puts("name".object_id)

is_true = true
puts(is_true.class)

is_true = :true
puts(is_true.class)

is_true = "yes"
if is_true == "yes"
  puts("it is true")
else
  puts("it is false")
end

is_true = :'yes'
if is_true == :yes
  puts("it is true")
else
  puts("it is false")
end

name = "John Doe"
puts(name.class)

name2 = name.to_sym
puts(name2.class)
puts(name2)

arr = ["Hello", 2.1, 1]
puts(arr[0])
puts(arr[1])
puts(arr[2])
puts(a = ["h", 1, 1.1, [1, 2, 3, 4]])

my_value = nil
puts(my_value.class)

s = "Hello"
puts(s.index("l"))
x = s.index("M")
puts(x.class)

puts(s.start_with? "Hell")
puts(s.end_with? "bells")

name = "John Doe"
puts(name.split)
x = name.split
puts(x.class)
