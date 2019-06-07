RSpec.shared_examples "ensures_validation" do |method|
  context "when word is invalid" do
    let(:word) { "1234" }

    it "raises an Argument Error" do
      expect{ subject.send(method) }.to raise_error(ArgumentError)
    end
  end
end
