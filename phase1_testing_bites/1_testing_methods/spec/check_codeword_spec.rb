# Exercise Two
require "check_codeword.rb"

RSpec.describe "check_codeword method" do
  it "returns a correct message if the right word is given" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  
  it "returns a message if the given word starts with h and ends with e" do
    result = check_codeword("hiree")
    expect(result).to eq "Close, but nope."
  end
  
  it "returns a wrong message if only the first letter is correct" do
    result = check_codeword("hello")
    expect(result).to eq "WRONG!"
  end

  it "returns a wrong message if only the last letter is correct" do
    result = check_codeword("bee")
    expect(result).to eq "WRONG!"
  end

  it "returns a wrong message if the wrong word is given" do
    result = check_codeword("pencil")
    expect(result).to eq "WRONG!"
  end
end



# Another way of writting it (with less testing options):
# require "check_codeword"

# describe "check_codeword" do
#   it "returns Correct" do
#     result = check_codeword("horse")
#     expect(result).to eq "Correct! Come in."
#   end 

#   it "returns Close" do
#     result = check_codeword("h..e")
#     expect(result).to eq "Close, but nope."
#   end

#   it "returns WRONG!" do
#     result = check_codeword("banana")
#     expect(result).to eq "WRONG!"
#   end

# end