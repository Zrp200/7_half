require "card"
require "deck"
require "hand"

describe Hand do
  describe "::MDSV" do
    subject {Hand::MDSV}
    it {is_expected.to be < 7.5}
    it {is_expected.to be_instance_of Float}
    it {is_expected.to_not be_instance_of Integer}
  end
  describe "::DECK" do
    subject {Hand::DECK}
    it {is_expected.to be_instance_of Deck}
    it {is_expected.to_not be_instance_of CardDeck::Deck}
    its(:draw) {is_expected.to be_instance_of CardDeck::Card}
    it "should have one less card after Hand#new is called" do; expect(Hand.new).to change(subject.length).by(1)}; end
  end
end
