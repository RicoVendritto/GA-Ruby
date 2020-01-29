my_items = []
puts my_items

my_items = [1, 2, 3, 4, 5, 6]

my_items.map do |i|
  puts i
end

my_items.map.with_index do |item, index|
  puts "#{item} #{index}"
end

my_items = *0..10
puts my_items

my_items = %w(A B C)
scores = [1, 2, 3, 4]

my_items.zip(scores).each do |item|
  puts item
end

my_items = [1, 2, 3]
 my_items.freeze

puts my_items
#my_items << 2

arr1 = [1, 2, 3, 4, 5, 6, 1, 2, 3]
remove = [3, 2, 1]
new_array = arr1 - remove
puts new_array

puts arr1.last-1

arr1 = [1, 2, 3, 4, 5, 6, 1, 2, 3]
arr2 = ["Hello", "World"]

puts arr2[0]
puts arr2[-1]