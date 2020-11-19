

def test 
puts score["Computer"] +=1
puts score["Computer"] +=1
end 

test


=begin
def add_to_score
    if win?(player, computer)
        score["Player"] += 1
    else win?(computer, player)
        score["Computer"] += 1
    end
end
=end
        


=begin
loop do 
    puts score
    score["Player"] += 1
    if score["Player"] == 50
        break
    else
    end
end

def add_to_score
  if win?(player, computer)
    score["Player"] += 1
    puts "You are on #{score["Player"]}, Computer is on #{score["Computer"]}"  
  elsif win?(computer, player)
    score["Computer"] += 1
    "You are on #{score["Player"]}, Computer is on #{score["Computer"]}"
  else
    prompt "It's a tie!"
  end
end
=end
    
    
    





