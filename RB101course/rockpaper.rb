VALID_CHOICES = %w[rock paper scissors]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
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

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"

    choice = gets.chomp.downcase
    break if VALID_CHOICES.include?(choice)
    prompt "That's not a valid choice"
  end

  computer_choice = VALID_CHOICES.sample
  display_result(choice, computer_choice)
  prompt("You chose #{choice}, computer chose #{computer_choice}")
  prompt('Would you like to play again? [Enter Y or N]')
  play_again = gets.chomp.downcase
  break if play_again == 'n'
end

prompt('Cheers for playing gang.')
