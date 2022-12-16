# Exercise 
require "present"

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap(6)
    expect(present.unwrap).to eq 6
    # if there are six wrapped presents, we expect to have six presents to unwrap
  end

  # Error case 1:
  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
  # Error case 2, with 2 expect:
  it "fails if we try to wrap if we've already wrapped" do
    present = Present.new
    present.wrap(6) #we wrap 6
    expect { present.wrap(7) }.to raise_error "A contents has already been wrapped."
    expect(present.unwrap).to eq 6
    # because the wrap and unwrap are tightly associated we can keep 2 expect in the same block
    # we are under the assumption that it's failing to unwrap until it has been wrapped
    # it's also expected to fail to re-wrap or to edit the currently wrapped item 
  end
end