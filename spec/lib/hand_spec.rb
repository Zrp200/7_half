require "card"
require "deck"
require "hand"

describe Hand do
  describe "::MDHV" do
    subject {Hand::MDHV}
    it {is_expected.to be < 7.5}
    it {is_expected.to be_instance_of Float}
  end
  describe "::DECK" do
    subject {Hand::DECK}
    it {is_expected.to be_instance_of Deck}
    it {is_expected.to_not be_instance_of CardDeck::Deck}
    its(:sample) {is_expected.to be_instance_of CardDeck::Card}
  end
end
