require "card"
RSpec.describe CardDeck::Card do
  describe "#value" do
    context "when Ace" do
      subject {CardDeck::Card.new("Ace", "diamonds").value}
      it {is_expected.to eq 1}
    end
    context "when Integer" do
      subject {CardDeck::Card.new(rand(2..6), 'diamonds')
      it {is_expected.to eq 2..6}
    end
  end
end
