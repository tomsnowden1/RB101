puts "How long is the room in metres?"
length = gets.chomp.to_f

puts "How wide is the room in metres?"
width = gets.chomp.to_f

def convert_to_feet(metres)
    metres.to_f
    feet = metres * 10.7639
end


area = length * width

puts "The area of the room is #{area.round(2)} square meters (#{convert_to_feet(area).round(2)} square feet)"




=begin
Build a program that asks a user for the length and width of a room in meters 
and then 
displays the area of the room in both square meters and square feet.
=end