require "time_conversion"

RSpec.describe "time_conversion method" do
  it "converts time to hours and/or minutes" do
    result = time_conversion(789.3)
    expect(result).to eq "13 hours and 9 minutes"
  end
end