require 'calculate_reading_time'
  
RSpec.describe "calculate_reading_time" do
  context "given an empty string" do
    it "returns zero" do 
      result = calculate_reading_time("")
      expect(result).to eq 0
    end
  end
  
  context "given a text under two hundred words" do  
    it "returns one" do 
      result = calculate_reading_time("one two")
      expect(result).to eq 1
    end
  end

  context "given a text of two hundred words" do  
    it "returns one" do 
      result = calculate_reading_time("one " * 200)
      expect(result).to eq 1
    end
  end

  context "given a text of three hundred words" do  
    it "returns two" do 
      result = calculate_reading_time("one " * 300)
      expect(result).to eq 2
    end
  end

  context "given a text of four hundred words" do  
    it "returns two" do 
      result = calculate_reading_time("one " * 400)
      expect(result).to eq 2
    end
  end

  context "given a text of five thousand words" do  
    it "returns twenty-five" do 
      result = calculate_reading_time("one " * 5000)
      expect(result).to eq 25
    end
  end
end
