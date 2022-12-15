# testing methods challenge

def report_length(str)
  if str.is_a? String
    length = str.length
    return "This string was #{length} characters long."
  else
    return "Not a string"
  end
end