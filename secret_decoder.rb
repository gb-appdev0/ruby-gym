# We have a program to encode our messages, now can you write a way to decode them? 
# Remember our secret code: a = 1, e = 2, i = 3, o = 4, u = 5.  
# Your program should:
# - ask for an encoded message
# - decode the message
# - print the decoded message.


p "Enter in the secret you want to decode"
secret = gets.chomp
decoded = ""

vowels = "aeiou"
numbers = "12345"


secret.each_char do |char|
  if numbers.include?(char)
    decoded += vowels[numbers.index(char)]
  else
    decoded += char
  end
end

decoded[0] = decoded[0].upcase

p decoded