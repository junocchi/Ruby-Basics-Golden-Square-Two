# Testing For Errors

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to test for errors using RSpec.

## Introduction

Sometimes you want your code to throw an error. For example:

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
    # Look here! We want to fail if there is no reminder yet.
    fail "No reminder set!" if @task.nil?
    return "#{@task}, #{@name}!"
  end
end
```

But if we take the naïve approach to testing this:

```ruby
# File: spec/reminder_spec.rb

require 'reminder'

RSpec.describe Reminder do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      result = reminder.remind()
      expect(result).to eq "No reminder set!"
    end
  end
end
```

This will not work. <!-- OMITTED -->

This is because errors behave in an unusual way. They stop the program
immediately, so the method doesn't return anything any more — it doesn't even
get that far!

To test that errors are thrown properly, we have to adapt our approach:

```ruby
# File: spec/reminder_spec.rb

require 'reminder'

RSpec.describe Reminder do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end
```

There are three key differences:

1. We use `expect { ... }` with curly braces, not parentheses.
2. We put the code that throws the error inside the braces. This, combined with
   difference 1, 'wraps' this code in a special environment that means RSpec can
   'catch' the error.
3. We use `raise_error` instead of `eq` (equal).

The keywords `raise_error` and `eq` are both kinds of 'matcher'. RSpec supports
many matchers. You don't need to know very many of them but they can be
interesting to look up.

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=8vWmgQ3WCU0&t=2058s)

## Exercise

Add this file into your `lib/` directory.

```ruby
# File: lib/present.rb

class Present
  def wrap(contents)
    fail "A contents has already been wrapped." unless @contents.nil?
    @contents = contents
  end

  def unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
  end
end
```

Write some tests for this class.

[Example Solution](https://www.youtube.com/watch?v=8vWmgQ3WCU0&t=2425s)

## Challenge

Add this file into your `lib/` directory.

```ruby
# File: lib/password_checker.rb

class PasswordChecker
  def check(password)
    if password.length >= 8
      return true
    else
      fail "Invalid password, must be 8+ characters."
    end
  end
end
```

Write some tests for this class.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F03_testing_for_errors_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F03_testing_for_errors_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F03_testing_for_errors_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F03_testing_for_errors_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F03_testing_for_errors_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
