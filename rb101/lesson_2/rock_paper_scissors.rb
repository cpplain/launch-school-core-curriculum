# ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
# require "pry"
require "yaml"

MESSAGES = YAML.load_file("rock_paper_scissors_messages.yml")

VALID_CHOICES = {
  "r" => { hand: "rock", beats: "scissors" },
  "p" => { hand: "paper", beats: "rock" },
  "s" => { hand: "scissors", beats: "paper" }
}

def clear_display
  system("clear") || system("cls")
end

def prompt(message)
  puts "=> #{message}"
end

def display_welcome
  clear_display
  prompt MESSAGES["welcome"]
end

def display_options
  VALID_CHOICES.each { |key, value| prompt "'#{key}' for '#{value[:hand]}'" }
end

def get_player_choice
  loop do
    prompt MESSAGES["choose"]
    display_options
    player_choice = gets.chomp

    return VALID_CHOICES[player_choice] if VALID_CHOICES.include? player_choice
    prompt MESSAGES["invalid_choice"]
  end
end

def display_choices(player1_choice, player2_choice)
  prompt format(MESSAGES["player_choices"],
                player1: player1_choice[:hand],
                player2: player2_choice[:hand])
end

def winner?(player1_choice, player2_choice)
  return :player1 if player1_choice[:beats] == player2_choice[:hand]
  return :player2 if player2_choice[:beats] == player1_choice[:hand]
  :tie
end

def display_hand_winner(winner)
  case winner
  when :player1
    prompt MESSAGES["player1_wins_hand"]
  when :player2
    prompt MESSAGES["player2_wins_hand"]
  when :tie
    prompt MESSAGES["tie"]
  end
end

def update_score(score, winner)
  score[winner] += 1 unless winner == :tie
end

def display_score(score)
  prompt format(MESSAGES["score"],
                player1: score[:player1],
                player2: score[:player2])
end

def display_game_winner(winner)
  if winner == :player1
    prompt MESSAGES["player1_wins_game"]
  else
    prompt MESSAGES["player2_wins_game"]
  end
end

def new_game?
  loop do
    prompt MESSAGES["new_game"]
    answer = gets.chomp.downcase

    return true if answer == "yes"
    return false if answer == "no"
    prompt MESSAGES["invalid_response"]
  end
end

def reset_score(score)
  score.transform_values! { |_| 0 }
end

def display_goodbye
  prompt MESSAGES["goodbye"]
end

# - Welcome player
# - Get the player's choice
# - Generate computer's choice
# - Display results of the hand
# - Update game score
# - Display results of the game once a player reaches 5 wins
# - Contine if the player would like a new game
# - Exit game

display_welcome
score = { player1: 0, player2: 0 }

loop do
  player1_choice = get_player_choice
  player2_choice = VALID_CHOICES[VALID_CHOICES.keys.sample]
  display_choices player1_choice, player2_choice

  winner = winner? player1_choice, player2_choice
  display_hand_winner winner
  update_score score, winner
  display_score score

  next unless score[:player1] == 5 || score[:player2] == 5
  display_game_winner winner

  break unless new_game?
  clear_display
  reset_score score
end

display_goodbye
