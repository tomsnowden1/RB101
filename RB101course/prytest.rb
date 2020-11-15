require "pry" # add this to use Pry

counter = 0

loop do
  counter += 2
  binding.pry # execution will stop here
  break if counter == 5
end
