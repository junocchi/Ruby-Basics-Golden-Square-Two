# Unit Testing Terminal IO

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to unit test terminal IO using RSpec doubles.

## Introduction

Many programs take input and produce output. However, `puts` is not returning,
and `gets` is not the same as passing arguments. This poses challenges to
testing.

Consider this class.

```ruby
class Greeter
  def greet
    puts "What is your name?"
    name = gets.chomp
    puts "Hello, #{name}!"
  end
end
```

A relatively simple class on the face of it, but a nightmare to test!
`Greeter#greet` doesn't take any arguments, and doesn't return anything either.

To test it, we need to create doubles for `puts` and `gets` so we can check and
control them. But how can we do that when they are plain old methods? This will
take a few steps.

First, we can rephrase this code.

```ruby
class Greeter
  def greet
    Kernel.puts "What is your name?"
    name = Kernel.gets.chomp
    Kernel.puts "Hello, #{name}!"
  end
end
```

`Kernel` is a special object in Ruby that provides a number of special methods
like `gets` and `puts`. You've not seen it until now because it is usually
implicit — Ruby adds in the `Kernel.` behind the scenes.

Now that we have `Kernel` in there, we can create a double for it. We're going
to call it `@io` because it's a bit more descriptive.

```ruby
class Greeter
  def initialize(io)
    @io = io
  end

  def greet
    @io.puts "What is your name?"
    name = @io.gets.chomp
    @io.puts "Hello, #{name}!"
  end
end

RSpec.describe Greeter do
  it "greets the user" do
    io = double :io
    expect(io).to receive(:puts).with("What is your name?")
    expect(io).to receive(:gets).and_return("Kay")
    expect(io).to receive(:puts).with("Hello, Kay!")

    greeter = Greeter.new(io)
    greeter.greet
  end
end

# If we want to run `Greeter` for real, we do it like this
# greeter = Greeter.new(Kernel)
# greeter.greet
```

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=znbct4MAp9A&t=6168s)

## Exercise

Test drive a class that behaves like this:

```ruby
interactive_calculator = InteractiveCalculator.new(Kernel)
interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
```

[Example Solution](https://www.youtube.com/watch?v=znbct4MAp9A&t=7015s)

## Challenge

Test drive a class that behaves like this:

```ruby
string_repeater = StringRepeater.new(Kernel)
string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX
```


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F05_unit_testing_terminal_io_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F05_unit_testing_terminal_io_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F05_unit_testing_terminal_io_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F05_unit_testing_terminal_io_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F05_unit_testing_terminal_io_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
