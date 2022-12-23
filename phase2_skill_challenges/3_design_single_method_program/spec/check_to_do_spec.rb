require "check_to_do"

RSpec.describe "check_to_do method" do
  context "given an empty string" do
    it "fails" do
      expect { check_to_do("") }.to raise_error "Not a string."
    end
  end

  context "given a TODO string" do
    it "returns true" do
      result = check_to_do("TODO")
      expect(result).to eq true
    end
  end

  context "given a not valid string" do
    it "returns false" do
      result = check_to_do("Arsenal")
      expect(result).to eq false
    end
  end
end