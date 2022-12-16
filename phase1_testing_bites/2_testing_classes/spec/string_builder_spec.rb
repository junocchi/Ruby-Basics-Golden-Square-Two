# Exercise 2
require "string_builder"

RSpec.describe StringBuilder do
  context "initially" do
    it "Initially returns an empty string" do
      string_builder = StringBuilder.new
      expect(string_builder.output).to eq ""
    end
    
    it "Initially returns a length of 0" do
      string_builder = StringBuilder.new
      expect(string_builder.size).to eq 0
    end
  end

  # both blocks below overlap our test, so we removed them (if the test passes the "given many additions" it means they would not fail the next two blocks)
  # context "given one addition of a string" do
  #   it "Outputs that string" do
  #     string_builder = StringBuilder.new
  #     string_builder.add("London")
  #     result = string_builder.output
  #     expect(result).to eq "London"
  #   end

  #   it "Returns the string's number of characters" do
  #     string_builder = StringBuilder.new
  #     string_builder.add("London")
  #     result = string_builder.size
  #     expect(result).to eq 6
  #   end
  # end

  context "given many additions of a string" do
    it "Outputs that string" do
      string_builder = StringBuilder.new
      string_builder.add("London")
      string_builder.add("Cambridge")
      string_builder.add("Bristol")
      result = string_builder.output
      expect(result).to eq "LondonCambridgeBristol"
    end

    it "Returns the string's number of characters" do
      string_builder = StringBuilder.new
      string_builder.add("London")
      string_builder.add("Cambridge")
      string_builder.add("Bristol")
      result = string_builder.size
      expect(result).to eq 22
    end
  end
end