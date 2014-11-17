require "card"
RSpec.describe CardDeck::Card do
  describe "#value" do
    context "when Ace" do
      subject {CardDeck::Card.new("Ace", "diamonds").value}
      it {is_expected.to eq 1}
    end
    context "when 2" do
      subject {CardDeck::Card.new(2, 'diamonds').value}
      it {is_expected.to eq 2}
    end
  end
end
