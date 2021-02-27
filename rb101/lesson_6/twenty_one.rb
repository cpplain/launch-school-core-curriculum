# ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
# require "pry"
# require "pry-byebug"
require "yaml"

MESSAGES = YAML.load_file("twenty_one_messages.yml")

SUITS = %w[Clubs Diamonds Hearts Spades]
FACE_CARDS = %w[Jack Queen King]
PIP_CARDS = %w[Ace 2 3 4 5 6 7 8 9 10]
RANKS = FACE_CARDS + PIP_CARDS

def clear_display
  system("clear") || system("cls")
end

def prompt(msg)
  puts "=> #{msg}"
end

def prompt_with_blank(msg)
  prompt msg
  prompt ""
end

def display_welcome
  clear_display
  prompt_with_blank MESSAGES["welcome"]
end

def initialize_deck
  deck = []

  SUITS.each { |suit| RANKS.each { |rank| deck << { rank: rank, suit: suit } } }

  deck.shuffle!
end

def calculate_score(hand)
  score = 0
  aces = 0

  hand.each do |card|
    rank = card[:rank]

    if rank == "Ace"
      score += 11
      aces += 1
    elsif FACE_CARDS.include?(rank)
      score += 10
    else
      score += rank.to_i
    end
  end

  aces.times do
    break if score <= 21
    score -= 10
  end

  score
end

def deal_opening_hands!(deck, scores)
  hands = { player: [], dealer: [] }

  2.times do
    hands[:player] << deck.pop
    hands[:dealer] << deck.pop
  end

  scores[:player] = calculate_score(hands[:player])
  scores[:dealer] = calculate_score(hands[:dealer])

  hands
end

def open_game
  prompt_with_blank MESSAGES["opening_deal"]
end

def display_hand(hand, msg, score, hide_first_card)
  if hide_first_card
    hand = [hand.last]
    score = calculate_score(hand)
  end

  prompt "----"
  prompt MESSAGES[msg]
  prompt MESSAGES["card_hidden"] if hand.length == 1
  hand.each { |card| prompt "  #{card[:rank]} of #{card[:suit]}" }
  prompt format(MESSAGES["hand_value"], value: score)
  prompt_with_blank "----"
end

def display_hands(hands, scores, hide_first_card)
  display_hand(hands[:dealer], "dealer_hand", scores[:dealer], hide_first_card)
  display_hand(hands[:player], "player_hand", scores[:player], false)
end

def hit?
  loop do
    prompt MESSAGES["hit_or_stay"]
    choice = gets.chomp

    return true if choice == "1"
    return false if choice == "2"
    prompt_with_blank MESSAGES["invalid_choice"]
  end
end

def player_turn!(hands, scores, deck)
  prompt_with_blank MESSAGES["player_turn"]

  loop do
    display_hands(hands, scores, true)

    break unless hit?

    hands[:player] << deck.pop
    scores[:player] = calculate_score(hands[:player])

    break if scores[:player] > 21

    clear_display
  end

  clear_display
end

def dealer_turn!(hands, scores, deck)
  until scores[:dealer] >= 17
    hands[:dealer] << deck.pop
    scores[:dealer] = calculate_score(hands[:dealer])
  end

  prompt_with_blank MESSAGES["dealer_stays"] if scores[:dealer] <= 21
end

def determine_winner(scores)
  return "player_bust" if scores[:player] > 21
  return "dealer_bust" if scores[:dealer] > 21
  return "tie_game" if scores[:player] == scores[:dealer]
  return "player_win" if scores[:player] > scores[:dealer]
  return "dealer_win" if scores[:player] < scores[:dealer]
end

def display_winner(hands, scores, winner)
  display_hands(hands, scores, false)

  prompt MESSAGES[winner]
end

def new_game?
  loop do
    prompt MESSAGES["new_game"]
    choice = gets.chomp

    return true if choice == "y"
    return false if choice == "n"
    prompt MESSAGES["invalid_choice"]
  end
end

def display_goodbye
  clear_display
  prompt MESSAGES["goodbye"]
end

display_welcome

loop do
  scores = { player: 0, dealer: 0 }
  deck = initialize_deck
  hands = deal_opening_hands!(deck, scores)

  open_game
  player_turn!(hands, scores, deck)
  dealer_turn!(hands, scores, deck) unless scores[:player] > 21

  winner = determine_winner(scores)
  display_winner(hands, scores, winner)

  break unless new_game?
  clear_display
end

display_goodbye
