def greeting
  puts "What is your name?"
  name = gets.chomp
  if 
    name[-1] == "!"
    name.chop!
    puts "HELLO " + name.upcase + ". WHY ARE WE SHOUTING?"
  else
    puts "Hello " + name
  end
end

greeting

=begin
Write a program that will ask for user's name. 
The program will then greet the user. 
If the user writes "name!" 
then the computer yells back to the user.
=end