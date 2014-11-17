require "hand"
describe Hand do
  describe "::MDHV" do
    subject {Hand::MDHV}
    it {is_expected.to be < 7.5}
  end
end
