# ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
# require "pry"
require "yaml"

MESSAGES = YAML.load_file("loan_calculator_messages.yml")

def clear_display
  system("clear") || system("cls")
end

def prompt(message)
  puts "=> #{message}"
end

def positive_integer?(num)
  begin
    integer = Integer(num)
  rescue ArgumentError
    return false
  end

  integer > 0
end

def valid_rate?(num)
  begin
    rate = Float(num) * 0.01
  rescue ArgumentError
    return false
  end

  rate >= 0.0 && rate < 1.0
end

def display_welcome
  clear_display
  prompt MESSAGES["welcome"]
end

def get_loan_amount
  loop do
    prompt MESSAGES["enter_loan_amount"]
    loan_amount = gets.chomp

    return loan_amount.to_i if positive_integer? loan_amount
    prompt MESSAGES["invalid_dollar_amount"]
  end
end

def get_apr
  loop do
    prompt MESSAGES["enter_apr"]
    apr = gets.chomp

    return apr.to_f * 0.01 if valid_rate? apr
    prompt MESSAGES["invalid_apr"]
  end
end

def get_loan_duration
  loop do
    prompt MESSAGES["enter_loan_duration"]
    loan_duration = gets.chomp

    return loan_duration.to_i if positive_integer? loan_duration
    prompt MESSAGES["invalid_loan_duration"]
  end
end

def calculate_monthly_payment(loan_amount, apr, loan_duration)
  # Formula: m = p * (j / (1 - (1 + j)**(-n)))
  monthly_payment = if apr > 0
                      mpr = apr / 12
                      loan_amount * (mpr / (1 - (1 + mpr)**(-loan_duration)))
                    else
                      loan_amount / loan_duration
                    end

  monthly_payment.ceil(2)
end

def display_payment(monthly_payment)
  prompt format(MESSAGES["payment_is"], dollars: monthly_payment)
end

def recalculate_loan?
  loop do
    prompt MESSAGES["recalculate_loan"]
    answer = gets.chomp.downcase

    return true if answer == "yes"
    return false if answer == "no"
    prompt MESSAGES["invalid_response"]
  end
end

def display_goodbye
  prompt MESSAGES["goodbye"]
end

# - Welcome user
# - Get the loan amount in from the user
# - Get the annual percentage rate (APR) from the user
# - Get the loan duration from the user
# - Calculate and display the monthly payment
# - Ask the user if they would like to recalculate the loan
# - Exit the calculator

display_welcome
loop do
  loan_amount = get_loan_amount
  apr = get_apr
  loan_duration = get_loan_duration
  monthly_payment = calculate_monthly_payment(loan_amount, apr, loan_duration)
  display_payment monthly_payment
  break unless recalculate_loan?
end
display_goodbye
