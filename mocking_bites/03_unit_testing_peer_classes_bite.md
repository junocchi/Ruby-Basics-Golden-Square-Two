# Unit Testing peer Classes

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to unit test peer classes.

## Introduction

A peer relationship between classes is one where a class is associated with
another class one-to-one.

The principle of unit testing peer classes is very similar to testing
parent-child classes. Consider this example:

```ruby
# File: lib/diary_entry.rb

class DiaryEntry
  def initialize(title, contents) # title, contents are both strings
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end
end
```

```ruby
# File: lib/diary_entry_formatter.rb

class DiaryEntryFormatter
  def initialize(diary_entry) # diary_entry is an instance of DiaryEntry

  end

  def format
    # Returns a nicely formatted diary entry
  end
end
```

In this case, instead of creating a mock and passing it into a method, we pass
it into the initializer.

```ruby
# File: spec/diary_entry_formatter_spec.rb

RSpec.describe DiaryEntryFormatter do
  it "formats a diary entry" do
    fake_diary_entry = double(:fake_diary_entry, title: "Hello", contents: "Hello, world!")
    formatter = DiaryEntryFormatter.new(fake_diary_entry)
    expect(formatter.format).to eq "Hello: Hello, world!"
  end
end
```

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=znbct4MAp9A&t=3545s)

## Exercise

Consider these class designs:

```ruby
# File: lib/secret_diary.rb

class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    # ...
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    # Locks the diary
    # Returns nothing
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
  end
end
```

```ruby
# File: lib/diary.rb

class Diary
  def initialize(contents) # contents is a string
  end

  def read
    # Returns the contents of the diary
  end
end
```

Test-drive these classes. Include:

1. Integration tests
2. Unit tests, exercising _all_ of the class's functionality, _without_ using or
   referring to the other class.

[Example Solution](https://www.youtube.com/watch?v=znbct4MAp9A&t=4088s)

## Challenge

Add this class design to your `01_mocking_bite_exercise` codebase from the
previous exercise.

```ruby
class TaskFormatter
  def initialize(task) # task is an instance of Task
  end

  def format
    # Returns the task formatted as a string.
    # If the task is not complete, the format is:
    # - [ ] Task title
    # If the task is complete, the format is:
    # - [x] Task title
  end
end
```

Test-drive this class using unit tests and mocking. 

You can also add some integration tests if you want some more practice of that.


[Next Challenge](04_unit_testing_api_requests_bite.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F03_unit_testing_peer_classes_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F03_unit_testing_peer_classes_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F03_unit_testing_peer_classes_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F03_unit_testing_peer_classes_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F03_unit_testing_peer_classes_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
