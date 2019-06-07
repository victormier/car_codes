RSpec.shared_examples "ensures_validation" do |method|
  context "when word is invalid" do
    let(:word) { "1234" }

    it "raises an error" do
      expect{ subject.send(method) }.to raise_error
    end
  end
end
