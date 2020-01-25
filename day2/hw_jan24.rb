# Write a program that counts up the number of vowels contained in the string s. Valid vowels are: 'a', 'e', 'i', 'o', and 'u'.
# For example, if  s = 'azcbobobegghakl', your program should print: Number of vowels: 5

def check_vowels(string)
  return string.scan(/[aeiou]/).length()
end

puts("Number of vowels in string: #{check_vowels("azcbobobegghakl")}")

# Write a program that prints the number of times the string 'bob' occurs in s. For example, if s = 'azcbobobegghakl', then your program should print
# Number of times bob occurs is: 2

def find_bob(string, key)
  return string.scan(/(?=#{key})/i).count
end

puts("Number of Bob's: #{find_bob("azcbobobegghakl", "BOB")}")

# Ask the user to input a string and then reversal the given input.
#   Input:  "Programming in Python"
#   Output: nohtyP ni gnimmargorP

def reverse_string(string)
  return string.reverse
end

puts("Reversed String: #{reverse_string("Programming in Python")}")

# Write a program that accepts a sentence and calculate the number of uppercase letters and lowercase letters. Suppose the following input is supplied to the program.
#   Input: Hello World
#   Output: UPPERCASE: 2, LOWERCASE: 9

def upper_lower_case(string)
  upper = string.scan(/[A-Z]/).length()
  lower = string.scan(/[a-z\s]/).length()
  return "UPPERCASE: #{upper}, LOWERCASE: #{lower}"
end

puts(upper_lower_case("Hello World"))

# Write a program that accepts a comma-separated sequence of words as input and prints the words in a comma-separated sequence after sorting them alphabetically.
# Suppose the following input is supplied to the program: without, hello, bag, world
# Then, the output should be: bag, hello, without, world

def order_string(string)
  return string.split(", ").sort.join(", ")
end

puts("Orderd string: #{order_string("without, hello, bag, world")}")

# Ask the user to enter a string, and check if it is a palindrome. If yes, print True, or else print False.

def validate_palindrome(string)
  if string.downcase == string.downcase.reverse
    return true
  else
    return false
  end
end

puts("Palindrome: #{validate_palindrome("Racecar")}")
puts("Palindrome: #{validate_palindrome("Richard")}")