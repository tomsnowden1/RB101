  wee = Array.new(0)

def weebum(ppp)
  ppp.each do |x|
    if x != Integer
      x >> wee[]
    end 
  end
  print wee
end

weebum([1, 3, 4, "tom ", "is cool"])

=begin 
start the method , takes array of integers as parameter
IF the argument contains a non-integer, 
convert it to a new array
end
    a method that takes an array of integers, and returns a new array with every other element

=end

def poop(array)
  array.map do |x|
   print x + " "
  end 
end 

poop(["hello", "I like", "poop"])

=begin
START the mthod called concate, takes array as argument
iterate over each array integer
put every integer in a new variable
print variable
    a method that takes an array of strings, and returns a string that is all those strings concatenated together

=end

puts "What is the first number you want to add"
first = gets.chomp.to_i
puts "What is the second number you want to add"
second = gets.chomp.to_i
puts first + second


=begin
PRINT ask for number one
SET and GET number one
PRINT asl for number two
SET and GET number two
PRINT number onee plus number two


=end

=begin

    a method that returns the sum of two integers
    a method that takes an array of strings, and returns a string that is all those strings concatenated together
    a method that takes an array of integers, and returns a new array with every other element

=end