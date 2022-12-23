# Challenge Design
# A method called count_words that takes a string 
# as an argument and returns the number of 
# words in that string.

require "count_words"

RSpec.describe "count_words method" do
  it "returns the number of words in a string" do
    result = count_words("friends " * 70)
    expect(result).to eq 70 
  end

  # alternative test 1
  # it "returns the number of words in a string" do
  #   expect(count_words("My name is Juliana")).to eq 4
  # end

  ## alternative test 2
  # it "returns the number of words in a string" do
  #   result = count_words("There is nothing I would not do for those who are really my friends")
  #   expect(result).to eq 14 
  # end
  
end
