# Testing Methods with Equality

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to test methods using RSpec.

## Introduction

_To follow along, [set up an RSpec project using this
guide.](../pills/setting_up_an_rspec_project.md)_

We can use RSpec to test whether a method returns the right value. Here's an
example:

```ruby
# File: lib/add_five.rb
def add_five(num)
  return num + 5
end
```

```ruby
# File: spec/add_five_spec.rb
require 'add_five'

RSpec.describe "add_five method" do
  it "adds 5 to 3 to return 8" do
    result = add_five(3)
    expect(result).to eq 8
  end
end
```

```shell
# To run the tests
; rspec
.

Finished in 0.00471 seconds (files took 0.12319 seconds to load)
1 example, 0 failures
```

<details>
  <summary>My RSpec says <code>0 examples</code> :confused:</summary>

  Have you put `add_five.rb` into the `lib/` directory? That's necessary for
  RSpec to find that file. Your project structure should look something like
  this:

  ```
  .
  ├── Gemfile
  ├── Gemfile.lock
  ├── lib
  │   └── add_five.rb
  └── spec
      ├── add_five_spec.rb
      └── spec_helper.rb
  ```
</details>

Then, if the method is broken in some way, the test fails.

```ruby
# File: lib/add_five.rb
def add_five(num)
  return num + 4 # Oh no!!
end
```

```shell
# To run the tests
; rspec
F

Failures:

  1) add_five method adds 5 to 3 to return 8
     Failure/Error: expect(result).to eq 8

       expected: 8
            got: 7

       (compared using ==)
     # ./spec/add_five_spec.rb:6:in `block (2 levels) in <top (required)>'

Finished in 0.02544 seconds (files took 0.12434 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/add_five_spec.rb:4 # add_five method adds 5 to 3 to return 8
```

Let's break down the RSpec syntax:

```ruby
# File: spec/add_five_spec.rb
require 'add_five' # We have to require the file with our code in first.

# Then we set up a test suite — a group of tests.
# We use this string to describe the unit of code we're testing
RSpec.describe "add_five method" do

  # Next, we create a single test example.
  # We use the string here to describe what the example is.
  it "adds 5 to 3 to return 8" do
    # We run the method with an example argument 3
    result = add_five(3)

    # And then expect (assert) that in this example it should return 8
    expect(result).to eq 8

    # RSpec will run this example, and if this example doesn't work like you
    # said it would, the test will fail.
  end

  # We can put more test examples here...
end

# But we only have one test suite per file.
```

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=8vWmgQ3WCU0&t=0s)

## Exercise

[To set up an RSpec project for these exercises, follow this guide.](../pills/setting_up_an_rspec_project.md)

### One

Add this file into your `lib/` directory.

```ruby
# File: lib/greet.rb

def greet(name)
  return "Hello, #{name}!"
end
```

Write a test for this method.

<details>
  <summary>My RSpec keeps saying <code>0 examples</code> :confused:</summary>

  Have you put `greet.rb` into the `lib/` directory? That's necessary for
  RSpec to find that file. Your project structure should look something like
  this:

  ```
  .
  ├── Gemfile
  ├── Gemfile.lock
  ├── lib
  │   └── greet.rb
  └── spec
      ├── greet_spec.rb
      └── spec_helper.rb
  ```
</details>


### Two

Add this file into your `lib/` directory.

```ruby
# File: lib/check_codeword.rb

def check_codeword(codeword)
  if codeword == "horse"
    return "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
    return "Close, but nope."
  else
    return "WRONG!"
  end
end
```

Write a test for this method.

### Example Solutions

[Example Solutions](https://www.youtube.com/watch?v=8vWmgQ3WCU0&t=469s)

## Challenge

Add this file into your `lib/` directory.

```ruby
# File: lib/report_length.rb

def report_length(str)
  length = str.length
  return "This string was #{length} characters long."
end
```

Write some tests for this method.


[Next Challenge](02_testing_classes_with_equality_bite.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F01_testing_methods_with_equality_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F01_testing_methods_with_equality_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F01_testing_methods_with_equality_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F01_testing_methods_with_equality_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=testing_bites%2F01_testing_methods_with_equality_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
