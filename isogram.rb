# Determine if a word or phrase is an isogram.

# An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter,
#   however spaces and hyphens are allowed to appear multiple times.

# Examples of isograms:

# lumberjacks
# background
# downstream
# six-year-old

# The word isograms, however, is not an isogram, because the s repeats.

# Your Job
# Define a class called String with a class method called isogram? that accepts one String argument, and returns true or false.

# Example

#   String.isogram?("eleven") # => false
#   String.isogram?("subdermatoglyphic") # => true

class String

  def String.isogram?(string)

    string = string.gsub(" ","")
    string = string.gsub("-","").downcase
    string.each_char do |char|
      if string.count(char) > 1 then
        return false
      end
    end

    return true
  end
end