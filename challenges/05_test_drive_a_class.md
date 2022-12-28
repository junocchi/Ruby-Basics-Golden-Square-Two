# Test Drive a Single-Class Program

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive a single-class program.

## Introduction

Test-driving a single-class program is similar to test-driving a single-method
program. Our approach differs purely because methods and classes are different.

**A method** is a reusable chunk of code that takes input as arguments and
returns a value.

**An object** is a structure that wraps ('encapsulates') a collection of values
(called 'state' or 'memory') and exposes some methods that can operate on that
state.

**A class** is a blueprint for creating objects.

**In object-oriented programming, the most important unit of behaviour is the
class.** We build our programs by creating classes that work together to
accomplish the job of the program.

To introduce this, we're going to:

1. Test-drive a single-class program.
2. Design a single-class program.
3. Test-drive a system of classes.
4. Design a system of classes.

In this step, we will test-drive a single class program. This means we will
focus on the 'Create Examples as Tests' and 'Implement Behaviour' steps first.

## Creating Examples for Single-Class Programs

Instead of an example like this:

```ruby
extract_uppercase("hello WORLD") => ["WORLD"]
```

We will need to create examples of the behaviour of the class, like this:

```ruby
gratitudes = Gratitudes.new
gratitudes.add("your cat")
gratitudes.add("nice people")
expect(gratitudes.format).to eq "Be grateful for: your cat, nice people"
```

Some methods on a class can be tested individually, but much of the time
creating examples for a class requires multiple methods to be called.

Implementing behaviour is roughly the same as for methods, though we will place
more emphasis on building the examples and behaviour in small steps due to the
increased complexity of single-class tests.

[A video demonstration](https://www.youtube.com/watch?v=sRAtinfld-w&t=0s)

## Exercise

Test-drive a class with the following interface. Feel free to re-use your
previous code, or re-write it if you want to practice.

```ruby
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
```

[Example Solution](https://www.youtube.com/watch?v=sRAtinfld-w&t=820s)

## Challenge

Test-drive a class with the following interface. Feel free to re-use or re-write
your previous code.

```ruby
class GrammarStats
  def initialize
    # ...
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
```


[Next Challenge](06_design_a_class.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F05_test_drive_a_class.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F05_test_drive_a_class.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F05_test_drive_a_class.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F05_test_drive_a_class.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F05_test_drive_a_class.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
