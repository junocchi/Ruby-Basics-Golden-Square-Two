# Exercise 1
require "counter"

RSpec.describe Counter do
  it "Reports a zero count" do
    counter = Counter.new
    #  result = counter.report()
    #  expect(result).to eq "Counted to 0 so far."
    # instead of assigning a variable and calling it, we can just do as below:
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "reports a new counter value, after one addition" do
    counter = Counter.new
    counter.add(5)
    expect(counter.report).to eq "Counted to 5 so far."
  end

  it "Reports a new counter value, after another addition" do
    counter = Counter.new
    counter.add(5)
    counter.add(4)
    expect(counter.report).to eq "Counted to 9 so far."
  end
end