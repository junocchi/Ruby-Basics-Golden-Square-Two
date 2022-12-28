# Intermezzo: Debugging 1

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to debug simple and complex single-method programs.

## Introduction

Debugging literally means 'removing bugs'. The name comes from a story about the
computing pioneer Grace Hopper, who once tracked down a problem to a literal
bug, taping it to her report for good measure:

![Image of a moth attached to a bug log](../resources/hopper-bug-image.png)

You can see from the above page that Hopper was following a methodical process.

Earlier we described test-driving and free-running development as two approaches
to creating software. In this exercise we will see the difference between
**Change Debugging** and **Discovery Debugging**. Change debugging works when
the problem is simple, but fails when the problem is complex.

## Exercise 1

Set a timer for 10 minutes.

Your challenge is to debug the program below before the timer goes off. When you
fix the program or the timer goes off, move on to the next exercise.

```ruby
def say_hello(name)
  return "hello #(name)"
end

# Intended output:
#
# > say_hello("kay")
# => "hello kay"
```

## Exercise 2

Set a timer for 10 minutes.

Your challenge is to debug the program below before the timer goes off. When you
fix the program or the timer goes off, move on to the next exercise.

```ruby
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
```

## Interlude: Methodical Debugging

_[A condensed video explanation of this section is here.](https://www.youtube.com/watch?v=JnoTLn2HYXE&t=0s)_

Exercise 2 probably felt hard. Most bugs are so easy we can solve them without
thinking. But most of the _time_ you spend debugging will be on the hard bugs.

This is why debugging is our third key engineering practice. The better you are
at debugging, the less time you spend not knowing what is going on, and the more
effective you will be — both here and in the industry.

It's time to explain Change Debugging and Discovery Debugging.

* **Change Debugging**  
  You figure there is a problem in the code, and so you stare at the code
  looking for the most suspicious-seeming part of it. You change that part and
  run the code to see if it works. If it doesn't, you keep looking for new
  changes to make.

  The problem with this style is that there are approximately an infinite number
  of changes you can make to any complex code. The chances of you landing on the
  right fix are very small, especially if you are inexperienced.

  In Change Debugging, the program is an obstacle to be overcome.

* **Discovery Debugging**  
  You focus instead on investigating and examining how the code executes, the
  flow of control, which ifs and loops run and how many times, the values of
  variables as they change through the program. You build up your understanding
  of what the program is doing until you're quite sure you understand the
  problem.

  You discover the bug first, and only then do you apply a change to fix it. If
  your change is wrong, you go back to discovery mode.

  In Discovery Debugging, the code is an artefact to be studied.

Both approaches are fine. If you can see the right change immediately and fix
it, that's great! But if you find your changes don't work or the code is
complex, Discovery Debugging is the right tool.

## Getting Visibility

Our most powerful tool for Discovery Debugging is 'getting visibility' — using
`p` to print out values in the program.

[Here is a demonstration of Getting Visibility](https://www.youtube.com/watch?v=JnoTLn2HYXE&t=353s). You may find the below code useful to refer to.

```ruby
def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end
```

## Exercise

Return to this example and debug it using Discovery Debugging.

```ruby
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
```

<details>
  <summary>:blue_heart: A few pieces of advice for if you get stuck.</summary>

  ---

  **Frustrated?**  
  If you feel frustrated, it might be because you're trying too hard to get to
  the answer. I know it's difficult, but release that pressure. The effective
  debugger is focused on understanding what is going on, not on trying to make
  it work. It's hard to understand if you're placing yourself under stress.
  
  Really it doesn't matter if you find the answer here or not, it will not
  affect your life after this one bit. It's just an exercise designed to help
  you learn to explore programs.

  **Pick a smaller example.**  
  Those sample inputs and outputs are quite big. We can reduce them to make the
  complexity of the program easier to manage. 
  
  For example, try picking only the first character of the example:

  ```ruby
  > encode("t", "secretkey")
  # Expected: E
  ```

  Then add letters to the string one by one. When does it start to go wrong?
  When you can find the minimal example, start using `p` statements to
  follow the data precisely through the execution of the code.

  **Go line by line.**  
  Start from the first line that executes. Is it correct? How sure are you? 
  
  Keep going through line by line and print out everything you can find. Does
  anything look off?

  **Pen and paper programs.**  
  Get out a pen and paper and run the code yourself on paper. If you understand
  it well enough, and you can use `p` to check, you will be able to do this.

  You will come across parts of the code you're not sure what they do yet.
  Research these, play with them in the REPL, and then run those parts on paper
  too.

  **Change tack.**  
  Experienced debuggers will try one technique, then if it doesn't work they'll
  try another, and they will keep trying different techniques until one works.
  
  You don't have as many techniques as an experienced debugger yet, but you can
  still try something else, like one of the techniques above.

  ---

</details>

[Example Solution](https://www.youtube.com/watch?v=JnoTLn2HYXE&t=985s)

## Challenge

Debug this program.

```ruby
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[0][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

```


[Next Challenge](05_test_drive_a_class.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F04_intermezzo_debugging_1.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F04_intermezzo_debugging_1.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F04_intermezzo_debugging_1.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F04_intermezzo_debugging_1.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F04_intermezzo_debugging_1.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
