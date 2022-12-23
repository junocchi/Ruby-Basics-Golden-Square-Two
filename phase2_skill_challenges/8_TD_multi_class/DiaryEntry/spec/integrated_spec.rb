require "diary"
require "diary_entry"

RSpec.describe Diary do
  it "initializes Diary" do
    julianas_diary = Diary.new
  end

  it "returns all diary entries" do
    julianas_diary = Diary.new
    mon_diary_entry = DiaryEntry.new("London", "concert " * 200)
    tue_diary_entry = DiaryEntry.new("Oxford", "cinema " * 300)
    wed_diary_entry = DiaryEntry.new("Cambridge", "dinner " * 400)
    julianas_diary.add(mon_diary_entry)
    julianas_diary.add(tue_diary_entry)
    julianas_diary.add(wed_diary_entry)
    result = julianas_diary.all
    expect(result).to eq [mon_diary_entry, tue_diary_entry, wed_diary_entry]
  end
end

# test 1
# julianas_diary = Diary.new

# test 2
# julianas_diary = Diary.new
# mon_diary_entry = DiaryEntry.new("London", "concert " * 200)
# tue_diary_entry = DiaryEntry.new("Oxford", "cinema " * 300)
# wed_diary_entry = DiaryEntry.new("Cambridge", "dinner " * 400)
# julianas_diary.add(mon_diary_entry)
# julianas_diary.add(tue_diary_entry)
# julianas_diary.add(wed_diary_entry)
# result = julianas_diary.all
# expect(result).to eq [mon_diary_entry, tue_diary_entry, wed_diary_entry]

# test 3
# julianas_diary = Diary.new
# mon_diary_entry = DiaryEntry.new("London", "concert " * 200)
# tue_diary_entry = DiaryEntry.new("Oxford", "cinema " * 300)
# wed_diary_entry = DiaryEntry.new("Cambridge", "dinner " * 400)
# julianas_diary.add(mon_diary_entry)
# julianas_diary.add(tue_diary_entry)
# julianas_diary.add(wed_diary_entry)
# result = julianas_diary.count_words
# expect(result).to eq 900

# test4
# julianas_diary = Diary.new
# mon_diary_entry = DiaryEntry.new("London", "concert " * 200)
# tue_diary_entry = DiaryEntry.new("Oxford", "cinema " * 300)
# wed_diary_entry = DiaryEntry.new("Cambridge", "dinner " * 400)
# julianas_diary.add(mon_diary_entry)
# julianas_diary.add(tue_diary_entry)
# julianas_diary.add(wed_diary_entry)
# result = julianas_diary.reading_time(201)
# expect(result).to eq 5
# #adding 201 will force the dev to add a .ceil (or similar to provide an approx. number as integer)

# test 5
# julianas_diary = Diary.new
# mon_diary_entry = DiaryEntry.new("London", "concert " * 200)
# tue_diary_entry = DiaryEntry.new("Oxford", "cinema " * 300)
# wed_diary_entry = DiaryEntry.new("Cambridge", "dinner " * 400)
# thu_diary_entry = DiaryEntry.new("Bristol", "party " * 268)
# julianas_diary.add(mon_diary_entry)
# julianas_diary.add(tue_diary_entry)
# julianas_diary.add(wed_diary_entry)
# julianas_diary.add(thu_diary_entry)
# result = julianas_diary.find_best_entry_for_reading_time(90, 3)
# expect(result).to eq thu_diary_entry
