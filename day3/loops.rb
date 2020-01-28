x = 0

while x < 10
  puts x
  x -= -1
end

y = 10

until y < 1
  puts y
  y -= 1
end

z = 0

loop do
  puts z
  z -= -1
  if z > 10
      break
  end
end

items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in items
  puts item
end

items.each do |item|
  puts item
end

for x in 1..100
  puts x
end
