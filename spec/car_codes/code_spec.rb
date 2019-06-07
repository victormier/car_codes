require 'spec_helper'

RSpec.describe CarCodes::Code do
  subject { described_class.new(word) }
  let(:word) { "CWAH" }

  describe "#to_human" do
    context "when word is valid" do
      it "returns a valid human-readable text" do
        expect(subject.to_human).to eq "Compact - Wagon/Estate - Auto Unspecified Drive - Hybrid Air"
      end
    end

    include_examples "ensures_validation", :to_human
  end

  describe "#category" do
    context "when word is valid" do
      it "returns a valid category" do
        expect(subject.category).to eq "Compact"
      end
    end

    include_examples "ensures_validation", :category
  end

  describe "#type" do
    context "when word is valid" do
      it "returns a valid type" do
        expect(subject.type).to eq "Wagon/Estate"
      end
    end

    include_examples "ensures_validation", :type
  end

  describe "#transmission" do
    context "when word is valid" do
      it "returns a valid transmission" do
        expect(subject.transmission).to eq "Auto Unspecified Drive"
      end
    end

    include_examples "ensures_validation", :transmission
  end

  describe "#fuel" do
    context "when word is valid" do
      it "returns a valid fuel" do
        expect(subject.fuel).to eq "Hybrid Air"
      end
    end

    include_examples "ensures_validation", :fuel
  end

end
