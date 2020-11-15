puts "What is the bill?"
bill = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_i 
100

tip = (bill * tip_percentage) / 100
puts "The total amount of the tip is $#{tip}"

puts "The total amount of everything including tip is $#{bill + tip}"

=begin
Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

=begin
Create a simple tip calculator. 
The program should prompt for a bill amount and a tip rate. 
The program must compute the tip 
and then 
display both the tip and the total amount of the bill.
=end
