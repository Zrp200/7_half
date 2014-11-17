require "card"
RSpec.describe CardDeck::Card do
  describe "#value" do
    describe "num" do
      context "when Ace" do
        subject {CardDeck::Card.new("Ace", "diamonds").value}
        it {is_expected.to eq 1}
      end
      context "when 2" do
        subject {CardDeck::Card.new(2, 'diamonds').value}
        it {is_expected.to eq 2}
      end
      context "when King" do
        subject {CardDeck::Card.new "King", 'diamonds'}
        it {is_expected.to eq 0.5}
      end
    end
  end
end
