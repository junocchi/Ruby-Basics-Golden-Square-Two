# Example
# A method called `make_snippet` that takes a string 
# as an argument and returns the first five words 
# and then a '...' if there are more than that.

# she did not use require "make_snippet" to test the first time
require "make_snippet"

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet(" ")
      expect(result).to eq " "
    end
  end

  context "given a string with five words" do
    it "returns the string" do
      result = make_snippet("one two three four five")
      expect(result).to eq "one two three four five"
    end
  end

  context "given a string with six words" do
    it "returns the string" do
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five..."
    end
  end
end
