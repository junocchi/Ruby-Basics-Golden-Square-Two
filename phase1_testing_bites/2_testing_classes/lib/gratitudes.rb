# Testing classes challenge
class Gratitudes
  def initialize
    @gratitudes = []
  end

  def add(gratitude)
    @gratitudes.push(gratitude)
  end

  def format
    formatted = "Be grateful for: "
    formatted += @gratitudes.join(", ")
    return formatted
# "Be grateful for: #{@gratitudes.join(", ")}"
  end
end

# Alternative, from the video
# class Gratitudes
#   def initialize
#     @gratitudes = []
#   end

#   def add(gratitude)
#     @gratitudes << gratitude
#   end

#   def format
#     prefix = "Be grateful for: "
#     formatted_gratitudes = @gratitudes.join(", ")
#     return formatted + formatted_gratitudes
#   end
# end