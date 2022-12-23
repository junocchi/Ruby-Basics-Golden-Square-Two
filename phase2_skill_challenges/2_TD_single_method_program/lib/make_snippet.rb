def make_snippet(text)
  words = text.split(" ") # returns an array of words ["one", "two", "three"...]
  if words.length <= 5
    return text
  else
    first_five_words = words[0, 5].join(" ")
    return first_five_words + "..."
  end
end