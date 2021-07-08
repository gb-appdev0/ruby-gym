# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"

input = gets.chomp
numbers = input.split(" ")
num1 = numbers[0].to_i
num2 = numbers[1].to_i

if num1 + num2 <= 21 then
  p num1 +num2
elsif num1 == 11
  if num2 == 11 then
    p 12
  end
  if num2 + 1 > 21 then
    p 0
  else
    p num2 + 1
  end
elsif num2 == 11
  if num1 + 1 > 21 then
    p 0
  else
    p num1 + 1
  end
  
end