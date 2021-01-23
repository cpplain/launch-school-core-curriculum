# ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
# require "pry"
require "yaml"

MESSAGES = YAML.load_file("messages.yml")

VALID_CHOICES = %w(rock paper scissors)

POSSIBLE_WINS = {
  "rock" => "scissors",      # rock beats scissors
  "paper" => "rock",         # paper beats rock
  "scissors" => "paper"      # scissors beats paper
}

def clear_display
  system("clear") || system("cls")
end

def prompt(message)
  puts "=> #{message}"
end

def get_player_choice
  loop do
    prompt format(MESSAGES["choose"], valid_choices: VALID_CHOICES.join(', '))
    player_choice = gets.chomp

    return player_choice if VALID_CHOICES.include? player_choice
    prompt MESSAGES["invalid_choice"]
  end
end

def winner?(player1_choice, player2_choice)
  return "player1" if POSSIBLE_WINS[player1_choice] == player2_choice
  return "player2" if POSSIBLE_WINS[player2_choice] == player1_choice
  "tie"
end

def display_results(player1_choice, player2_choice)
  prompt format(MESSAGES["player_choices"], player1_choice: player1_choice,
                                            player2_choice: player2_choice)

  winner = winner? player1_choice, player2_choice
  case winner
  when "player1"
    prompt MESSAGES["player1_wins"]
  when "player2"
    prompt MESSAGES["player2_wins"]
  when "tie"
    prompt MESSAGES["tie"]
  end
end

# - Welcome player
# - Get the player's choice
# - Generate computer's choice
# - Display results of the game
# - Contine if the player would like a new game
# - Exit game

clear_display
prompt MESSAGES["welcome"]

loop do
  player1_choice = get_player_choice
  player2_choice = VALID_CHOICES.sample

  display_results player1_choice, player2_choice

  prompt MESSAGES["new_game"]
  break unless gets.chomp == "y"
  clear_display
end

prompt MESSAGES["farewell"]
