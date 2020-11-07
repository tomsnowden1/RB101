def reverse_words(poop)
  poop.split.map do |x|
    if x.length >= 5
      x.reverse
    else
      x.length <= 4
    end
  end
 
end

puts reverse_words("My name is Thomas")

# puts reverse_words('Professional')          
# puts reverse_words('Walk around the block') 
# puts reverse_words('Launch School')        

=begin Write a method that takes one argument, a string containing one or more words, 
and returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.
=end