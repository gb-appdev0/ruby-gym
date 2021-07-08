# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"

sentence = gets.chomp.downcase
letters = 0
spaces = 0
digits = 0

sentence.each_char do |char|

  if ("a".."z").include?(char) then
    letters += 1
  elsif ("0".."9").include?(char)
    digits += 1
  elsif " " == char
    spaces += 1
  end

end

p "Number of letters in the string is: #{letters}"
p "Number of spaces in the string is: #{spaces}"
p "Number of digits in the string is: #{digits}"
