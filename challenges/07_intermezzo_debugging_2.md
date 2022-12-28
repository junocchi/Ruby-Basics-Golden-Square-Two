# Intermezzo: Debugging 2

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to debug interactively.

## Introduction

[This is a bit easier to follow on the video.](https://youtu.be/gg_xGT2pjSk)

Earlier we introduced the idea of **Discovery Debugging** and getting visibility
using `p` to print out values in the program and follow the flow of execution.

We'll now show you another technique for discovery debugging — an interactive
debugger.

Put this in a file and run it using `ruby factorial.rb

```ruby
# File: factorial.rb
def factorial(n)
  product = 1
  while n > 0
    binding.irb # Mystery new line!
    n -= 1
    product *= n
  end
  product
end

p factorial(5)
```

You will see something like this:

```ruby
; ruby factorial.rb

From: factorial.rb @ line 4 :

    1: def factorial(n)
    2:   product = 1
    3:   while n > 0
 => 4:     binding.irb
    5:     n -= 1
    6:     product *= n
    7:   end
    8:   product
    9: end
```

Whenever the line `binding.irb` is executed, the code will stop and you will be
presented with an interactive terminal at that point in the program.

At this point, you can inspect variables to see what they are:

```ruby
3.0.0 :001 > n
 => 5
3.0.0 :002 > product
 => 1
```

You can continue the program by running `exit` or hitting `ctrl+d`. You will see
the terminal pop up again and again as the loop cycles round until it finishes.

## Challenge

Debug the following program:

```ruby
class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(1)
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char|
      next unless is_letter?(char)
      counter[char] = (counter[char] || 1) + 1
      if counter[char] > most_common_count
        most_common = char
        most_common_count += counter[char]
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]
```


[Next Challenge](08_test_drive_a_class_system.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F07_intermezzo_debugging_2.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F07_intermezzo_debugging_2.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F07_intermezzo_debugging_2.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F07_intermezzo_debugging_2.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F07_intermezzo_debugging_2.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
