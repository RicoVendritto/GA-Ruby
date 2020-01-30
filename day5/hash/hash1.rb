empty = Hash.new

numbers = {
    :one => 1,
    :two => 2
}

puts numbers[:three]

puts numbers.keys
puts numbers.values

numbers_arr = numbers.to_a
puts numbers_arr

text = "This is sample text"
flag = {
    :text => text,
    :picture => "/pictures.jpg"
}

text = text.upcase
flag[:text] = text
puts flag

student = {
    name: 'Bob',
    age: 22,
    weight: '146 LBS',
    hair: 'Brown'
}

student.each do |key, value|
  puts "#{key} = #{value}"
end

def greeting(name, options = {})
  if options.empty?
    puts name
  else
    puts "Hi, #{name}, #{options[:age]}"
  end
end

greeting(student[:name], student)