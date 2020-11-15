def prompt(message)
  puts "=> #{message}"
end

def convert_to_percentage(num)
  percentage = num / 1200
  percentage
end

prompt('Welcome to Car Loan Calculator, please enter your loan amount')
loan_amount = gets.chomp.to_i


prompt('Ok dank, now pleaase enter yyour Annual Interest Rate (%)')
apr = gets.chomp.to_f
apr_percentage = convert_to_percentage(apr)

prompt('Even danker, now please enter the loan duration in months')
loan_duration = gets.chomp.to_i

monthly_payment = loan_amount * (apr_percentage / (1 - (1 + apr_percentage)**(-loan_duration)))

prompt("You will be paying $#{monthly_payment.round(2)} per month")

=begin

m = p * (j / (1 - (1 + j)**(-n)))

    m = monthly payment
    p = loan amount
    j = monthly interest rate
    n = loan duration in months

    the loan amount
    the Annual Percentage Rate (APR)
    the loan duration
=end