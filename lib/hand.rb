require_relative "deck.rb" # Load Deck
class Hand # Acts as the player
  attr_accessor :cards # The cards in your hand
  DECK = Deck.new # The deck used in the game
  MDSV = 7.5 * (17.0/21.0) # Minimum value the dealer can stay at. Uses the same ratio as blackjack1.
  def initialize; @cards = [DECK.draw]; end
  def card; @cards.push DECK.draw; end # Adds a card to your hand, increasing your value
  def value # The combined value of all the cards in your hand
    sum = 0.0
    for c in @cards; sum += c.value; end
    return sum
  end
end
  
  
