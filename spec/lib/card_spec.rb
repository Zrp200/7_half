require "card"
RSpec.describe CardDeck::Card do
  describe "#value" do
    describe "num" do
      context "when Ace" do
        subject {CardDeck::Card.new("Ace", "diamonds").value}
        it {is_expected.to eq 1}
      end
      context "when 2..7" do
        it "should eq @num" do
          num = (2..7).to_a.sample
          s = CardDeck::Card.new num, "diamonds"
          expect(2..7).to cover(s.value)
        end
      end
      context "when King" do
        subject {CardDeck::Card.new("King", 'diamonds').value}
        it {is_expected.to eq 0.5}
      end
      context "when Queen" do
        subject {CardDeck::Card.new("Queen", 'diamonds').value}
        it {is_expected.to eq 0.5}
      end
      context "when Jack" do
        subject {CardDeck::Card.new("Jack", 'diamonds').value}
        it {is_expected.to eq 0.5}
      end
    end
  end
end
