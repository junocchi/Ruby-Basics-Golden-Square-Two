# Testing Classes with Equality

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to test classes with equality using RSpec.

## Introduction

Testing classes is fundamentally similar to testing methods. However, classes
perform a different job to methods. Instead of taking some arguments and giving
a return value like a method, classes look after some data (state) with a common
group of methods (behaviour).

So we need to adapt our approach. Here is an example:

```ruby
# File: lib/reminder.rb
class Reminder
  def initialize(name)
    @name = name
  end

  def remind_me_to(task)
    @task = task
  end

  def remind()
    return "#{@task}, #{@name}!"
  end
end
```

```ruby
# File: spec/reminder_spec.rb

require 'reminder'

# We use the class name here rather than a string
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end

  # We would typically have a number of these examples.
end
```

Rather than our example being to call one method and check the return value, our
example involves calling a number of methods that exercise the intended
behaviour of the class.

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=8vWmgQ3WCU0&t=1015s)

## Exercise

### One

Add this file into your `lib/` directory.

```ruby
# File: lib/counter.rb

class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report
    return "Counted to #{@count} so far."
  end
end
```

Write some tests for this class.

### Two

Add this file into your `lib/` directory.

```ruby
# File: lib/string_builder.rb

class StringBuilder
  def initialize
    @str = ""
  end

  def add(str)
    @str += str
  end

  def size
    return @str.length
  end

  def output
    return @str
  end
end
```

Write some tests for this class.

### Example Solutions

[Example Solution](https://www.youtube.com/watch?v=8vWmgQ3WCU0&t=1440s)

## Challenge

Add this file into your `lib/` directory.

```ruby
# File: lib/gratitudes.rb

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
  end
end
```

Write some tests for this class.


[Next Challenge](03_testing_for_errors_bite.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F02_testing_classes_with_equality_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F02_testing_classes_with_equality_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F02_testing_classes_with_equality_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F02_testing_classes_with_equality_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F02_testing_classes_with_equality_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
