

loop do 
    puts "Please enter a number greater than 0"
    number = gets.chomp.to_i
    number_array = [*1..number]
    
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    choice = gets.chomp
    
    if choice == "s"
       answer_add = number_array.each.inject(:+)
       puts "The sum of the integers between 1 and #{number} is #{answer_add}"
       else
           choice == "p"
       answer_multiply = number_array.each.inject(:*)
       puts "The product of the integers between 1 and #{number} is #{answer_multiply}"
     end
     
     puts "do you want to play again? [y or n]"
     play_again = gets.chomp.downcase
     break unless play_again == "y"
end


=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum 
or product 
of all numbers between 1 and the entered integer.
=end