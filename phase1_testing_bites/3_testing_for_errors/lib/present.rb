# Exercise 
class Present
  def wrap(contents)
    fail "A contents has already been wrapped." unless @contents.nil?
    @contents = contents
    # if contents is empty, it will fail because there's nothing to be wrapped up
    # if there's any present stored in @contents, it will run wrap and wrap them up
  end

  def unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
    # if contents is empty, it means that no present have been wrapped up, therefore there's nothing to be unwrapped and it fails
  end
end
