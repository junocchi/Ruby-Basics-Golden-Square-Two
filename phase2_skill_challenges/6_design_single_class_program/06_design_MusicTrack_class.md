# MusicTrack Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class MusicTrack
  def initializer
    # ...
  end

  def add(music) # music is a string representing a music I've listened to
    # No return value, probably will store some content
  end

  def list
    # Returns a list of music I've listened to
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations.- avoid repeated tasks
- store added music
- if [] no music, fail message, return "no music added"


```ruby
# EXAMPLE

# 1
music_track = MusicTrack.new
music_track.initializer # => []
music_track.list # => []

# 2
music_track = MusicTrack.new
music_track.add("Beautiful Day")
music_track.add # => ["Beautiful Day"]
# if you give a music as an example you should expect the music to be stored somewhere, like ["Beautiful Day"]

# 3
music_track = MusicTrack.new
music_track.add("Beautiful Day")
music_track.add("Yellow")
music_track.list => # ["Beautiful Day", "Yellow"]
# if you give mor than one music as an example you should expect all of them to be stored somewhere, like ["Beautiful Day", "Yellow"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
