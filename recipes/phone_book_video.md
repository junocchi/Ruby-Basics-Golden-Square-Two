# did this one following the video with Millie

# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class PhoneBook
  def initialize # name is a string
    # ...
  end

  def extract_numbers(text) # task is a string representing a journal entry
    # No return value, probably will store some content
  end

  def list
    # Returns a list of strings representing phone numbers
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
phone_book = PhoneBook.new
phone_book.list # => []

# 2
phone_book = PhoneBook.new
phone_book.extract_numbers("07800000000")
phone_book.list # => ["07800000000"]
# if you give a number as an example you should expect the numbers to be stored somewhere, like ["07800000000"]

# 3
phone_book = PhoneBook.new
phone_book.extract_numbers("I was calling my friends 07800000000 the other day")
phone_book.list # => ["07800000000"]

# 4 
phone_book = PhoneBook.new
phone_book.extract_numbers("My faves:  07800000000, 07800000001")
phone_book.list # => ["07800000000, 07800000001"]

# 5
phone_book = PhoneBook.new
phone_book.extract_numbers("My faves")
phone_book.list # => []

# 6
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend George is 07800000000")
phone_book.extract_numbers("My friend Sarah is 07800000002")
phone_book.list # => ["07800000000, 07800000002"]

# 7
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend George is 0780000000") #does not have enough numbers
phone_book.list # => [] 

# 8
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend George is 07800000000")
phone_book.extract_numbers("My mate George is 07800000000")
phone_book.list # => ["07800000000"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
