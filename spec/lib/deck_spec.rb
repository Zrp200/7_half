RSpec.describe Deck do
  describe "#new" do
    subject {Deck.new}
    its(:length) {is_expected.to eq 40}
  end
end
