# exercise One
def calculate_reading_time(text)
  words = text.split(" ")
  return (words.length / 200.to_f).ceil 
  # 200 to float (otherwise short texts won't be round to 1, but to 0 instead)
end

# Other ideas below:
# alternative1: it returns hours, minutes and seconds (plural only)
# def calculate_reading_time(words)

# words = calculate_reading_time.new(12000, “bananas”).join(" ")
# or words = (12000 * “bananas”).join(' ')
#   word_count = words.split.length
#   minutes = word_count / 200.0
  
#   if minutes >= word_count
#     return "#{(minutes / 60).to_i} hours & #{(minutes % 60).to_i} minutes to read"
#   else
#     return "#{minutes.to_i} minutes & #{((minutes - minutes.to_i) * 60).to_i} seconds to read"
#   end
# end

# alternative2: it will calculate reading time of the file U2.txt
# def reading_time(words)
  
#   word_count = words.split.length
#   minutes = word_count / 200.0
  
#   if minutes >= word_count
#     return "#{(minutes / 60).to_i} hours & #{(minutes % 60).to_i} minutes to read"
#   else
#     return "#{minutes.to_i} minutes & #{((minutes - minutes.to_i) * 60).to_i} seconds to read"
#   end
# end

# def calculate_reading_time
#   file = File.read("U2.txt")
#   puts reading_time(file)
# end

# calculate_reading_time
# output: 1 minutes & 46 seconds to read
