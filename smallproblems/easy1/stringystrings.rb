def stringy(int)
  string = ""
  if int.even?
   tymes = int / 2
   string = tymes.times{ "10"}
  else
    tymes = (int - 1) / 2
   string = tymes.times{ "10" + "1"}
  end
  string

end 

puts stringy(7)

=begin
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end

=begin
      so if it's even, divide it by 2
      grab that number and run .times on printing 10
      
      if it's odd, minus one of it , diivide it by two
      grab that number and .times on pring 10, 
      add 1 at the end
=end

=begin
if integer , even, 
  divide by 2 
  equals multiplier
  add 10 * multiplier
end

if odd
  minus 1
  divide by 2
  equals multiplier
  add 10 * multiplier
  add 1 at the end 
6 = 3
4 = 2
=end
