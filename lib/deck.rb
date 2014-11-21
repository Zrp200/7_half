require_relative "card.rb" # Load modified CardDeck::Card
class Deck # The 40-card deck used in this game
  attr_reader :cards # The cards in the deck
  def initialize
    @cards = Array.new
    for suit in CardDeck::Card::SUIT
      stock "Ace", suit
      stock "King", suit
      stock "Queen", suit
      stock "Jack", suit
      for num in (2..7).to_a; stock num, suit; end
    end
    @cards.shuffle!
  end
  def length; @cards.length; end # How many cards are in @cards
  def draw; @cards.shift; end # Draw a card from @cards
  private
    def stock(card, suit); @cards.push CardDeck::Card.new(card, suit); end # Creates a card and puts it into @cards
end
