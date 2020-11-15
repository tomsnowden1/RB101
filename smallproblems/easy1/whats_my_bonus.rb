def calculate_bonus(num, boolean)
 bonus = 0
  if boolean == false
    bonus = 0
  else
    bonus = num / 2
  end
end
  
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000