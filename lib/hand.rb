require_relative "deck.rb" # Load Deck
class Hand # Acts as the player
  DECK = Deck.new # The deck used in the game
  MDHV = 7.5 * (17.0/21.0) # Minimum value the dealer can stay at. Uses the same ratio as blackjack1.
  def initialize; @cards = [DECK.draw]; end
end
  
  
