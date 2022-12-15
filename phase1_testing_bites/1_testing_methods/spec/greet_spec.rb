# Exercise One
require "greet"

RSpec.describe "greet method" do
  it "greets a given user" do
    result = greet("Alex")
    expect(result).to eq "Hello, Alex!"
  end
end


# Alternative way of writting it:
# require "greet"

# describe "Greeter" do
#   it "greets John" do
#     expect(greet("John")).to eq "Hello, John!"
#   end
# end