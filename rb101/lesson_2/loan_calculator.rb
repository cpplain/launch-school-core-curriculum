# ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
# require "pry"

# Print a message prepended with prompt identifier
def prompt(message)
  puts "=> #{message}"
end

# Validate number is a positive integer
def positive_integer?(num)
  begin
    integer = Integer(num)
  rescue ArgumentError
    return false
  end

  integer > 0 ? integer : false
end

# Validate number is a valid interest rate
def valid_rate?(num)
  begin
    rate = Float(num) * 0.01
  rescue ArgumentError
    return false
  end

  rate > 0.0 && rate < 1.0 ? rate : false
end

# Make the screen nice and pretty
system("clear") || system("cls")

prompt "Welcome to the loan calculator!"

loop do
  # Get the loan amount in whole dollars from the user
  loan_amount = ""
  loop do
    prompt "Please enter the loan amount in whole dollars (Example: 10000):"
    print "$"
    input = gets.chomp

    loan_amount = positive_integer? input

    if loan_amount
      break
    else
      prompt "That doesn't look like a whole dollar amount."
    end
  end

  # Get the annual percentage rate from the user
  annual_percentage_rate = ""
  loop do
    prompt "Please enter the annual percentage rate (Example: 8.5 for 8.5%):"
    input = gets.chomp

    annual_percentage_rate = valid_rate? input

    if annual_percentage_rate
      break
    else
      prompt "That doesn't look like a valid percentage rate."
    end
  end

  # Get the loan duration in months from the user
  loan_duration = ""
  loop do
    prompt "Please enter the loan duration in months (Example: 36):"
    input = gets.chomp

    loan_duration = positive_integer? input

    if loan_duration
      break
    else
      prompt "That doesn't look like a valid loan duration."
    end
  end

  # Calculate and display the monthly payment
  # Formula: m = p * (j / (1 - (1 + j)**(-n)))
  monthly_percentage_rate = annual_percentage_rate / 12

  monthly_payment = loan_amount * (monthly_percentage_rate / (1 -
                    (1 + monthly_percentage_rate)**(-loan_duration)))

  prompt "Your payment will be $#{monthly_payment.ceil(2)} per month."

  # Ask the user if they would like to recalculate the loan
  prompt "Would you like to recalculate the loan? ('y' to recalculate)"
  answer = gets.chomp.downcase
  break unless answer.start_with? "y"

  system("clear") || system("cls")
end

prompt "Thank you for using the loan calculator!"
