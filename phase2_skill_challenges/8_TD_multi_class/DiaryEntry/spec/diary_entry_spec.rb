# my code (unnecessary test at the beggining, better to start over, follow Davids one below or watch the video if stuck)

# require "diary_entry"

# RSpec.describe DiaryEntry do
#   it "initializes DiaryEntry" do
#     j_diary = DiaryEntry.new
#   end
# end

require "new_diary_entry"

RSpec.describe DiaryEntry do
  context "when entry added" do
    it "it returns title" do
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      expect(entry_1.title).to eq "Monday"
    end

    it "it returns contents" do
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      expect(entry_1.contents).to eq ("Manic " * 200)
    end
