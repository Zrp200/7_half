require_relative "deck"
require_relative "card"
class Hand # Acts as the player
  DECK = Deck.new.shuffle # The deck used in the game
  MDHV = 7.5 * (16.0/21.0) # Max dealer hit value. It is at the same ratio as blackjack.
  def initialize; end
end
  
  
