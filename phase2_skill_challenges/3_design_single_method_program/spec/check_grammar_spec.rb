require "check_grammar"

RSpec.describe "check_grammar method" do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end

  context "given a sentence with a capital letter and punctuation mark" do
    it "returns true" do
      result = check_grammar("Dobby is free.")
      expect(result).to eq true
    end
  end

  context "given a sentence without a capital letter" do
    it "returns false" do
      result = check_grammar("dobby is free.")
      expect(result).to eq false
    end
  end

  context "given a sentence without a punctuation mark" do
    it "returns false" do
      result = check_grammar("Dobby is free")
      expect(result).to eq false
    end
  end

  context "given a sentence with neither a capital letter nor a punctuation mark" do
    it "returns false" do
      result = check_grammar("dobby is free")
      expect(result).to eq false
    end
  end

  context "given a sentence with an uppercase first word and a full-stop" do
    it "returns true" do
      result = check_grammar("DOBBY is free.")
      expect(result).to eq true
    end
  end

  context "given a sentence with an exclamation mark on the end" do
    it "returns true" do
      result = check_grammar("Dobby is free!")
      expect(result).to eq true
    end
  end

  context "given a sentence with a question mark on the end" do
    it "returns true" do
      result = check_grammar("Is Dobby free?")
      expect(result).to eq true
    end
  end

  context "given a sentence with comma on the end" do
    it "returns false" do
      result = check_grammar("Is Dobby free,")
      expect(result).to eq false
    end
  end
end