RSpec.describe CardDeck::Card do
  describe "#value" do
    context "when Ace" do
      subject {CardDeck.Card("Ace", "diamonds").value}
      it {is_expected.to eq 1}
    end
    context "when Integer" do
      it "should return itself"
    end
end
