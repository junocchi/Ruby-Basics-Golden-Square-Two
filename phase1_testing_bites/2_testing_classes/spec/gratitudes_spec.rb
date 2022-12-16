# Testing classes challenge
require "gratitudes"

RSpec.describe Gratitudes do
  it do
    gratitudes = Gratitudes.new
    gratitudes.add("your dog")
    gratitudes.add("nice people")
    expect(gratitudes.format).to eq "Be grateful for: your dog, nice people"
  end
end

# require "gratitudes"
# RSpec.describe Gratitudes do
#   it "returns an empty array" do
#     example = Gratitudes.new 
#     expect(example.instance_variable_get(:@gratitudes)).to eq []
#   # this will check for an empty array
#   end

#   it "adds a string to the array" do
#     example = Gratitudes.new 
#     example.add("good health")
#     expect(example.instance_variable_get(:@gratitudes)).to eq ["good health"]
#   end

#   it "returns a string with the content from the array" do
#     example = Gratitudes.new 
#     example.add("good health")
#     expect(example.format).to eq "Be grateful for: good health"
#   end
# end
