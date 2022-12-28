# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
- Make sure the program initialises with the arguments title and contents (both strings)
- Title returns title as a string
- Contents returns contents as a string
- count_words will return the number (as integer) of words in contents
- reading_time will return the average number (as integer) of words per minute that a person takes to read a string
- reading_chunck will return the precise number of words a person can read with the given time

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._
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

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# initialize and .new are the same thing

# test 1
diary_enter = DiaryEntry.new("title","content") # => ["title", "content"]

# test 1
diary_enter.title => "title" # o diary_entry é um mundo novo com vários poderes (ex title, contents), e colocando .title eu estou chamando esse poder (title)

diary_enter.contents => "contents" # o diary_entry é um mundo novo com vários poderes (ex title, contents), e colocando .contents eu estou chamando esse poder (contents)

# test 2
diary_entry.count_words => integer # o count_words vai passar por contents, mas eu não preciso declarar o contents aqui.

# test 3
diary_entry.count_words("") => 0 # o count_words vai passar por contents vazio e tem que retornar 0

# test 4
diary_entry.reading_time(wpm) => integer # retorna o tempo que a pessoa leva para ler um certo content por minutes. assume que o argumento é a média de palavras que a pessoa leva para ler o contents, eu não tenho que fazer esse cálculo

# test 5
diary_entry.reading_chunk(wpm, minutes) => "string com as palavras que a pessoa consegue ler naquele determinado tempo" # Returns a string with a chunk of the contents that the user could read in the given number of minutes. If called again, `reading_chunk` should return the next chunk, skipping what has already been read, until the contents is fully read. The next call after that it should restart from the beginning.


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
