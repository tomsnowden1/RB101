VALID_CHOICES = %w[r p s l sp]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'r' && second == 's') ||
  (first == 'r' && second == 'l') ||
  (first == 'l' && second == 'sp') ||
  (first == 'sp' && second == 's') ||
  (first == 's' && second == 'l') ||
  (first == 'l' && second == 'p') ||
  (first == 'p' && second == 'sp') ||
  (first == 'sp' && second == 'r') ||
  (first == 'p' && second == 'r') ||
  (first == 's' && second == 'p')
end

hit_play = ""
def display_rules
  prompt  <<-MSG 
  The rules are as follows: 
  Scissors decapitate Scissors 
  Scissors cuts paper 
  Paper covers rock
  Rock crushes lizard
  Lizard poisons Spock
  Spock smashes scissors
  Scissors decapitates lizard
  Lizard eats paper
  Paper disproves Spock
  Spock vaporizes rock
  and as it always has, 
  rock crushes scissors
  
  Also, first to 5 wins
  MSG
  
  prompt "Type play to start"
  hit_play = gets.chomp.downcase
 hit_play == "play"
end


def display_result(player, computer)

  if win?(player, computer)
    prompt 'You won!'
  elsif win?(computer, player)
    prompt 'Computer won!'
  else
    prompt "It's a tie!"
  end
end

   score = Hash.new
score['Player'] = 0
score['Computer'] = 0

def play_or_read
  loop do 
    prompt "Would you like to play[play] or read the rules[read]"
    play_or_read = gets.chomp
    if play_or_read == "read"
      display_rules
    elsif
      play_or_read == "play"
        break
    else
      prompt "Invalid choice, type [play] or [read]"
  end
end
end

play_or_read

loop do
  choice = ''
  
    
  loop do
    prompt "Choose one: Rock[r], Paper[p], Scissors[s], Lizard[l], Spock[sp]"

    choice = gets.chomp.downcase
    break if VALID_CHOICES.include?(choice)
    prompt "That's not a valid choice"
  end

  computer_choice = VALID_CHOICES.sample
  
  display_result(choice, computer_choice)
  prompt("You chose #{choice}, computer chose #{computer_choice}")
  
  if win?(choice, computer_choice)
     score['Player'] +=1
     puts "You are on #{score['Player']}, Computer is on #{score['Computer']}"
     elsif win?(computer_choice, choice)
      score["Computer"] +=1
      puts "You are on #{score['Player']}, Computer is on #{score['Computer']}"
 else
   puts "No points given"
 end
  

  
  
  prompt('Would you like to play again? [Enter Y or N]')
  play_again = gets.chomp.downcase
  break if play_again == 'n'
end

prompt('Cheers for playing gang.')
