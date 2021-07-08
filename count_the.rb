# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"

sentence = gets.chomp
words = sentence.split(" ")
the_count = 0

words.each do |word|
  if word == "the"
    the_count += 1
  end
end

p "'the' appeared #{the_count} times"