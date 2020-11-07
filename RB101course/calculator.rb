

puts "Do you want to add, substract, divide or multiply"
answer = gets.chomp

puts "Enter first number"
first = gets.chomp.to_i
puts "Enter second number"
second = gets.chomp.to_i

if answer == "add"
  puts "#{first} + #{second} = #{first + second}"
elsif answer == "minus"
  puts "#{first} - #{second} = #{first - second}"
elsif answer == "multiply"
  puts "#{first} * #{second} = #{first * second}"
else
puts "#{first} / #{second} = #{first / second}"
end
    
    





=begin

    asks for two numbers (if Im being sneaky, 
    make it in the same line, 
    run split method on the integers, 
    return each one as variable)
    asks for the type of operation to perform: add, subtract, multiply or divide 
    (Use case, when, then)
    write quick methods for each operation
    displays the result
=end