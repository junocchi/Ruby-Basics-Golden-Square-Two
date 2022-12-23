def time_conversion(time)
  hours = (time / 60)
  minutes = (time % 60.to_i)
  return "#{hours.to_i.to_s} hours and #{minutes.to_i.to_s} minutes"
end

# time_conversion(127)
# to call the method, add the line above and swap return for puts