def ceasar
  check_array = ('a'..'z').to_a
  letter_b = ('a'..'z').to_a
  letter_A = ("A".."Z").to_a
  letter_B = ("A".."Z").to_a
  check_array.concat(letter_b)
  check_array.concat(letter_A)
  check_array.concat(letter_B)
  puts "Give us your secret message"
  message = gets.strip.split("")
  puts "How much should de offset be?"
  offset = gets.strip.to_i
  cipher = []

  message.map { |char|
    check_array.map.with_index { |let, index|
      if char == let
        index += offset
        cipher << check_array[index]
        break
      elsif char == " "
        cipher << char
        break
      end
    }
  }
  puts cipher.join
end

ceasar