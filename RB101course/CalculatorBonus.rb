require 'yaml'
MESSAGES = YAML.load_file('CalculatorBonus.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multplying"
  when "4"
    "Dividing"
  end
end

first = ""
second = ""
answer = ""
name = ""
operator = ""

prompt(MESSAGES['welcome'])  
loop do 
    name = gets.chomp
    if name.empty? 
      prompt("Put in your name ya mong")
    else
      break
    end
  end
  
prompt("Hi #{name}")
  

loop do
  
  loop do 
    prompt("Enter first number")
    first = gets.chomp.to_i
    if
      valid_number?(first)
      break
    else 
      prompt("Put an acutal number ya dick")
    end
    
  end
    
  loop do
    prompt("Enter second number")
    second = gets.chomp.to_i
     if
        valid_number?(second)
        break
    else 
        prompt("Put an acutal number ya dick")
    end
  end
  
  operator_prompt = <<-MSG
  What operation would you like to perform?
  [1] add
  [2] substract
  [3] multpliy
  [4] divide
  MSG
  
  prompt(operator_prompt)
  
  loop do 
   operator = gets.chomp
   if %w(1 2 3 4).include?(operator)
     break
   else 
     prompt("Must choose 1, 2, 3 or 4")
   end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  
  result = case operator
          when "1"
            first.to_i + second.to_i
          when "2"
            first.to_i - second.to_i
          when "3"
            first.to_i * second.to_i
          when "4"
            first.to_i / second.to_i
  end
  
  puts "The result is #{result}"
  
  prompt("Do you want to perform another calculation? [Y or N]")
  answer = gets.chomp.downcase
   break unless answer == "y"
  
end

prompt("Cheers kent")





=begin

    asks for two numbers (if Im being sneaky, 
    make it in the same line, 
    run split method on the integers, 
    return each one as variable)
    asks for the type of operation to perform: add, subtract, multiply or divide 
    (Use case, when, then)
    write quick methods for each operation
    displays the result
=end