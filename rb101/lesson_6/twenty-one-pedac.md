# Twenty-One PEDAC

Twenty-one is a game similar to blackjack but significantly simpler.

## Problem

**Input** - Player choice (hit or stay).

**Output** - Display result of game.

### Rules

- Goal
  - Get as close to 21 as possible without going over.
- Setup
  - Start with a normal 52-card deck of
    - four suits (clubs diamonds, hearts, spades) and
    - 13 ranks (2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace).
  - The game consists of a dealer and a player.
  - Both participants are initially dealt dealt two (2) cards.
  - The player can see both their cards but only one of the dealer's cards.
- Card values
  - 2-10 are worth face value.
  - Jack, Queen, King are worth 10.
  - Ace is worth either 1 or 11.
  - An Ace's value is determined each time a new card is drawn from the deck.
- Player turn
  - The player goes first and decides to either hit or stay.
  - Hit means the player asks for another card.
  - The player can hit as many times as desired.
  - The player's turn is over when the player either stays or busts.
  - If the player busts, the game is over and the player loses.
- Dealer turn
  - Once the player stays, it's the dealers turn.
  - The dealer must hit until the total is at least 17.
  - If the dealer busts, the player wins.
- When the player and dealer stay, the cards will be totaled to determine the winner. Highest total wins.

## Examples

### Example 1

- Dealer: Ace, unknown
- Player: 2, 8
- Player should hit. The dealer could have 21, and the player can only benefit from another card, as there is no way to bust with the current hand.

### Example 2

- Dealer: 7, unknown
- Player: 10, 7
- Player should stay. Probability is low the dealer has an Ace, which is the only way to lose this hand. The player's hand will most likely win or draw.

### Example 3

- Dealer: 5, unknown
- Player: Jack, 6
- Player should stay. This one is slightly tricky. The dealer must hit, and there's a good chance the dealer will bust.

## Data Structure

- Card is a hash containing rank and suit.
  - `{ rank: "2", suit: "club" }`
- Deck and hand is an array of cards.
  - `[{ rank: "2", suit: "clubs" }, { rank: "Ace", suit: "spades" }, ... ]`

## Algorithm

1. Initialize the deck.
2. Deal cards to player and dealer.
3. Player chooses to hit or stay.
   - Repeat until the player busts or stays.
4. If the player busts, the dealer wins.
5. Dealer hits or stays.
   - Repeat until dealer card total is greater than or equal to 17.
6. If dealer busts, the player wins.
7. Count card total and declare winner.

## Code

[twenty_one.rb](twenty_one.rb)
