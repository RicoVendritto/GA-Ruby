puts "Word please: "
text = gets.chomp.downcase
puts "Shift: "
n = gets.chomp.to_i

def caesar_cipher(text, n)
  # Defines a new variable called alphabet that is equal to individual letters a all the way to z.
  # These letters are each their own individual string.
  # The .to_a turns the 26 letters into an array. This array is named alphabet.
  alphabet = ('a'..'z').to_a
  # A new variable key is defined.
  # It is equal to Hash[alphabet.zip(alphabet.rotate(n))]
  # Hash[alphabet.zip(alphabet.rotate(n))]
  # Hash turns each pairing into key => value pairings.
  key = Hash[alphabet.zip(alphabet.rotate(n))]
  # print {key, value}
  puts key
  # separates the string into their separate characters.
  # For example, if text were “apple”, each_char would make “apple”
  # turn into “a”, “p”, “p”, “l”, “e”.
  text.each_char.inject("") do |newtext, char|
    newtext + key[char]
  end
  # we can replace the line 28 - 30 :
  # text.each_char.inject("") { |newtext, char| newtext + key[char] }
end

puts caesar_cipher(text, n)