VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts "=> #{message}"
end


def display_result(player, computer)
   if (player == "rock" && computer == "scissors") ||
    (player == "paper" && computer == "rock") ||
    (player == "scissors" && computer == "paper")
    prompt ("You won!")
  elsif
    (player == "rock" && computer == "paper") ||
    (player == "paper" && computer == "scissors") ||
    (player == "scissors" && computer == "rock")
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ""
  loop do 
    prompt("Choose one: #{VALID_CHOICES.join(", ")}")
    
    choice = gets.chomp.downcase
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end 
  end
  
  computer_choice = VALID_CHOICES.sample
  
  display_result(choice, computer_choice)
  
  prompt("You chose #{choice}, computer chose #{computer_choice}")
  
 
  prompt("Would you like to play again? [Enter Y or N]")
  play_again = gets.chomp.downcase
  break if play_again == "n"
end

prompt("Cheers for playing gang.")
