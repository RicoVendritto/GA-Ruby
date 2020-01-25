# Write a program that counts up the number of vowels contained in the string s. Valid vowels are: 'a', 'e', 'i', 'o', and 'u'.
# For example, if  s = 'azcbobobegghakl', your program should print: Number of vowels: 5

def check_vowels(string)
  return string.scan(/[aeiou]/).length()
end

def check_vowels_2(string)
  l = string.length - 1
  count = 0
  vowels = %w(A E I O U)

  while l >= 0
    vowels.each { |i|
      if i.downcase == string[l].downcase
        count += 1
      end
    }
    l -= 1
  end

  return count
end

puts("Number of vowels in string: #{check_vowels("azcbobobegghakl")}")
puts("Number of vowels in string: #{check_vowels_2("azcbobobegghakl")}")

# Write a program that prints the number of times the string 'bob' occurs in s. For example, if s = 'azcbobobegghakl', then your program should print
# Number of times bob occurs is: 2

def find_bob(string, key)
  return string.scan(/(?=#{key})/i).count
end

def find_bob_2(string, key)
  string = string.downcase
  key = key.downcase
  l = string.length - 1
  k = key.length - 1
  i = 0
  j = 0
  num = 0
  flag = true

  while l >= 0
    if string[i] == key[j]
      loop do
        if string[i + j] == key[j]
          flag = true
        else
          flag = false
        end
        j += 1
        if j == k
          break
        end
      end
      if flag == true
        num += 1
        flag = false
      end
      j = 0
    end
    i += 1
    l -= 1
  end
  return num
end


puts("Number of Bob's: #{find_bob("azcbobobegghakl", "BOB")}")
puts("Number of Bob's: #{find_bob_2("Jackbob ASHISHH s a crazy RICHARD JackRussellll Bob that is only a boB Richard he want Jack to be a bob, which is very Ash bobiness of bob.", "bob")}")
puts("Number of Richard's: #{find_bob_2("Jackbob ASHISHH s a crazy RICHARD JackRussellll Bob that is only a boB Richard he want Jack to be a bob, which is very Ash bobiness of bob.", "richard")}")
puts("Number of Ash's: #{find_bob_2("Jackbob ASHISHH s a crazy RICHARD JackRussellll Bob that is only a boB Richard he want Jack to be a bob, which is very Ash bobiness of bob.", "ash")}")
puts("Number of Jack's: #{find_bob_2("Jackbob ASHISHH s a crazy RICHARD JackRussellll Bob that is only a boB Richard he want Jack to be a bob, which is very Ash bobiness of bob.", "jack")}")


# Ask the user to input a string and then reversal the given input.
#   Input:  "Programming in Python"
#   Output: nohtyP ni gnimmargorP

def reverse_string(string)
  return string.reverse
end

def reverse_string_2(string)
  l = string.length - 1
  output = ""

  while l >= 0
    output << string[l]
    l -= 1
  end
  return output
end

puts("Reversed String: #{reverse_string("Programming in Python")}")
puts("Reversed String: #{reverse_string_2("Programming in Python")}")

# Write a program that accepts a sentence and calculate the number of uppercase letters and lowercase letters. Suppose the following input is supplied to the program.
#   Input: Hello World
#   Output: UPPERCASE: 2, LOWERCASE: 9

def upper_lower_case(string)
  upper = string.scan(/[A-Z]/).length()
  lower = string.scan(/[a-z\s]/).length()
  return "UPPERCASE: #{upper}, LOWERCASE: #{lower}"
end

def upper_lower_case_2(string)
  l = string.length - 1
  upper = 0
  lower = 0

  while l >= 0
    if string[l] === string[l].upcase && string[l] != " "
      upper += 1
    elsif string[l] === string[l].downcase || string[l] == " "
      lower += 1
    end
    l -= 1
  end

  return "UPPERCASE: #{upper}, LOWERCASE: #{lower}"
end

puts(upper_lower_case("Hello World"))
puts(upper_lower_case_2("Hello World"))

# Write a program that accepts a comma-separated sequence of words as input and prints the words in a comma-separated sequence after sorting them alphabetically.
# Suppose the following input is supplied to the program: without, hello, bag, world
# Then, the output should be: bag, hello, without, world

def order_string(string)
  return string.split(", ").sort.join(", ")
end

def order_string_2(string)
  l = string.length - 1
  j = 0
  words = []
  temp = ""

  while l >= 0
    if string[j] != "," && string[j] != " "
      temp << string[j]
    elsif string[j] == ","
      words.append(temp)
      temp = ""
    end
    l -= 1
    j += 1
  end

  if temp.length > 0
    words.append(temp)
    temp = ""
  end

  n = words.length - 1
  n.times do |i|
    index_min = i
    (i + 1).upto(n) do |j|
      index_min = j if words[j] < words[index_min]
    end
    words[i], words[index_min] = words[index_min], words[i] if index_min != i
  end

  words.each do |i|
    temp << i
    temp << ", "
  end

  return (temp)
end

puts("Ordered string: #{order_string("without, hello, bag, world")}")
puts("Ordered string: #{order_string_2("without, hello, bag, world")}")

# Ask the user to enter a string, and check if it is a palindrome. If yes, print True, or else print False.

def validate_palindrome(string)
  if string.downcase == string.downcase.reverse
    return true
  else
    return false
  end
end

def validate_palindrome_2(string)
  string = string.downcase
  l = string.length - 1
  reverse = ""

  loop do
    reverse << string[l]
    if l <= 0
      break;
    end
    l -= 1
  end

  if string == reverse
    return true
  else
    return false
  end
end

puts("Palindrome: #{validate_palindrome("Racecar")}")
puts("Palindrome: #{validate_palindrome("Richard")}")
puts("Palindrome: #{validate_palindrome_2("Racecar")}")
puts("Palindrome: #{validate_palindrome_2("Richard")}")
