puts "What is your age"
age = gets.chomp.to_i

puts "At what age would you like to retire"
retire_age = gets.chomp.to_i


years_away = retire_age - age
current_year = Time.now.year
retirement_year = current_year + years_away

puts "The current year is #{current_year}, so you will retire in the year of #{retirement_year}"

puts "You are #{years_away} years away from retirement"

=begin
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end