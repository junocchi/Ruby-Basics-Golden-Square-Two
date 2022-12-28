# Test-drive a Multi-Class Program

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive a multi-class program.

## Introduction

[This is a bit easier to follow on the video.](https://www.youtube.com/watch?v=eRniAN07Eow&t=0s)

In these challenges we started off test-driving a single method. Then we moved
to test-driving a class, which incorporated multiple methods. Now we will move
again to test-driving a system involving multiple classes.

This presents us with some new design challenges. We will cover those in the
next challenge. For now, we will focus on test-driving.

The principle here is similar to jumping from methods to classes. We still need
to generate examples and encode these as tests, followed up by implementing
behaviour to match those examples.

Consider the following design for a music library.

```ruby
# File: lib/music_library.rb

class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end
  
  def search_by_title(keyword) # keyword is a string
    # Returns a list of tracks with titles that include the keyword
  end
end
```

```ruby
# File: lib/track.rb

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def title
    # Returns the title as a string
  end

  def format
    # Returns a string of the form "TITLE by ARTIST"
  end
end
```

Based on this, we might come up with the following examples:

```ruby
# 1 - gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]

# 2 - searches by keyword
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("Carte") # => [track_1]

# 3 - searches by substring too
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("aes") # => [track_2]

# 4 - if no results, search yields empty list
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("zzz") # => []

# 5 - formats individual tracks
track = Track.new("Carte Blanche", "Veracocha")
track.format # => "Carte Blanche by Veracocha"
```

When encoding these into tests, we are left with a surprising decision — which
test suite do they go in? They test both `MusicLibrary` and `Track` — so which is
it? What do we call the tests?

Tests for multiple classes acting together are called **integration tests** or
sometimes **feature tests**. Tests for a single class or method are called
**unit tests**.

We create integration tests like this:

```ruby
# File: spec/music_library_integration_spec.rb

RSpec.describe "Music Library Integration" do
  it "gets all tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    expect(library.search_by_title("Carte")).to eq [track_1]
  end
  
  # ...
end
```

However, this is quite a bit to test-drive in one go, so we comment out all but
one line:

```ruby
# File: spec/music_library_integration_spec.rb

RSpec.describe "Music Library Integration" do
  it "gets all tracks" do
    library = MusicLibrary.new
    # track_1 = Track.new("Carte Blanche", "Veracocha")
    # track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    # library.add(track_1)
    # library.add(track_2)
    # expect(library.search_by_title("Carte")).to eq [track_1]
  end
  
  # ...
end
```

And then focus on our `MusicLibrary` class. We create a unit test for that
class:

```ruby
# File: spec/music_library_spec.rb

RSpec.describe MusicLibrary do
  it "constructs" do
    library = MusicLibrary.new
  end
  
  # ...
end
```

Implement it:

```ruby
# File: lib/music_library.rb

class MusicLibrary
end
```

And then back to the integration test to uncomment the next line:

```ruby
# File: spec/music_library_integration_spec.rb

RSpec.describe "Music Library Integration" do
  it "gets all tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    # track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    # library.add(track_1)
    # library.add(track_2)
    # expect(library.search_by_title("Carte")).to eq [track_1]
  end
  
  # ...
end
```

And so on. This is demonstrated through to finish in the video.

At some point you will come across another problem. How do you unit test
`MusicLibrary` without relying on `Track` and inadvertently making it an
integration test?

We are going to leave that subject alone for now and come back to it later. For
now, if you feel yourself about to write a unit test that should exist in the
integration tests — put it in the integration tests and leave it out of the unit
tests. This may make some of your unit tests quite small, which is OK.

## Exercise

Test-drive a class system based on this design.

This is quite a bit to think about — so I suggest making a list of examples for
your integration tests first in a text file, before you start on test-driving,
to make sure you've thought through the full system.

```ruby
# File: lib/diary.rb
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# File: lib/diary_entry.rb
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

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
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

[Example solution.](https://www.youtube.com/watch?v=eRniAN07Eow&t=1400s)

## Challenge

Test-drive a class system based on this design:

```ruby
# File: lib/todo_list.rb
class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end
```


[Next Challenge](09_design_a_class_system.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F08_test_drive_a_class_system.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F08_test_drive_a_class_system.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F08_test_drive_a_class_system.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F08_test_drive_a_class_system.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=challenges%2F08_test_drive_a_class_system.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
