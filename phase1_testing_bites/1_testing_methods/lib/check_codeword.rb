def check_codeword(codeword)
  if codeword == "horse"
    return "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
    # if true that first character of the string is *h* AND if true that the last character of the string equals *e*
    return "Close, but nope."
  else
    return "WRONG!"
  end
end
    