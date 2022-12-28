# Crafting Doubles

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to craft doubles for specific purposes.

## Introduction

In the last bite we introduced doubles. Doubles are a tool that we use when we
want to test that one class interacts with another in the correct way. We create
a double that acts the same as the collaborator class, and then verify that the
class we're trying to test does its job correctly.

To do this we have to create a double whose public interface matches the public
interface of the class we're trying to test. In this bite we will zoom in on how
to create doubles with specific requirements.

Below are some examples of how you can use doubles. Each example shows you how
the double might be created as a class first, and then how it can be created
using a double. Going forward you will usually use the doubling techniques only.

### An Object

```ruby
# As a class
class FakeObject

end

fake_object = FakeObject.new

# As a double
RSpec.describe "example" do
  it "example" do
    fake_object = double(:fake_object)
  end
end
```

### An Object With Methods

```ruby
# As a class
class FakeObject
  def greet
    return "Hello, world!"
  end
end

fake_object = FakeObject.new
fake_object.greet # => "Hello, world!"

# As a double
RSpec.describe "example" do
  it "example" do
    # This creates the double
    fake_object = double(:fake_object, greet: "Hello, world!")

    # This is just to show you what it can now do
    expect(fake_object.greet).to eq "Hello, world!"
  end
end
```

### To Make Methods Only Return Values With Given Arguments

```ruby
# As a class
class FakeObject
  def greet(name)
    fail unless name == "Kay"
    return "Hello, Kay!"
  end
end

fake_object = FakeObject.new
fake_object.greet("Kay") # => "Hello, Kay!"
fake_object.greet("Henry") # Raises an error

# As a double
RSpec.describe "example" do
  it "example" do
    # This creates the double
    fake_object = double(:fake_object)
    # This creates a 'stub' (fake method) on the double
    allow(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")

    # This is just to show you what it can now do
    expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
    fake_object.greet("Henry") # This will throw an error
  end
end
```

### To Verify Methods Are Called With Given Arguments

```ruby
# As a class
class FakeObject
  def initialize
    @greet_has_been_called = false
  end

  def greet(name)
    fail unless name == "Kay"
    @greet_has_been_called = true
    return "Hello, Kay!"
  end

  def has_greet_been_called
    return @greet_has_been_called
  end
end

fake_object = FakeObject.new
fake_object.has_greet_been_called # => false
fake_object.greet("Kay") # => "Hello, Kay!"
fake_object.has_greet_been_called # => true
fake_object.greet("Henry") # Raises an error


# As a double
RSpec.describe "example" do
  it "example" do
    # This creates the double
    fake_object = double(:fake_object)
    # This creates a 'stub' (fake method) on the double
    # But using 'expect' means the test will fail unless it is called.
    expect(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")

    # This is just to show you what it can now do
    expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
    fake_object.greet("Henry") # This will throw an error
    # If you comment out the above two lines, the test will fail.
  end
end
```

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=znbct4MAp9A&t=2875s)

## Exercise

Create doubles to pass these tests.

```ruby
RSpec.describe "doubles" do
  # Change `xit` to `it` one by one as you work through.

  xit "sets up a blank double" do
    # Set up your doubles here
    fake_object = # ...

    # Don't edit below
    expect(fake_object).to be
  end

  xit "sets up a double with methods" do
    # Set up your doubles here
    fake_object = # ...

    # Don't edit below
    expect(fake_object.speak).to eq "Meow"
    expect(fake_object.count_ears).to eq 2
    expect(fake_object.count_legs).to eq 4
  end

  xit "sets up a double with methods that take arguments" do
    # Set up your doubles here
    fake_object = # ...

    # Don't edit below
    expect(fake_object.speak("Jess")).to eq "Meow, Jess"
    # Don't stub this next one
    # It's just to verify you've set up the double correctly
    expect { fake_object.speak("Ron") }.to raise_error RSpec::Mocks::MockExpectationError
  end

  xit "sets up doubles that expect to be called" do
    fake_object = double :animal
    # Write an expectation below that the method "speak" is called with
    # the argument "Steve"

    # ...

    # Don't edit below
    fake_object.speak("Steve")
  end

  xit "creates a double for a specific case" do
    fake_diary = double :diary, add: nil
    # Set up this double to pass the tests below
    # ...

    # Don't edit below
    fake_diary.add(double :diary_entry)
    fake_diary.add(double :diary_entry)
    expect(fake_diary.count_entries).to eq 2
  end
end
```

[Example Solution](https://www.youtube.com/watch?v=znbct4MAp9A&t=3240s)

## Challenge

Create doubles to pass this test.

```ruby
RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = # ...
    task = # ...

    # Don't edit below
    task_list.add(task)
    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end
```


[Next Challenge](03_unit_testing_peer_classes_bite.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F02_crafting_doubles_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F02_crafting_doubles_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F02_crafting_doubles_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F02_crafting_doubles_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F02_crafting_doubles_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
