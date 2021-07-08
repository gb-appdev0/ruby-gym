# Write a program that
#   asks the user for a secret message
#   and 'encode's the message by replacing vowels with other characters
#   Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

# Your program should print the encoded message.

p "Enter in the secret you want to encode"

input = gets.chomp
vowels = "aeiou"

input.each_char.with_index do |char, i|
  if vowels.include?(char)
    input[i] = (vowels.index(char) + 1).to_s
  end

end

p input