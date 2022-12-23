def check_to_do(text)
  fail "Not a string." if text.empty?
  if text.include? "TODO"
    return true
  else
    return false
  end
end