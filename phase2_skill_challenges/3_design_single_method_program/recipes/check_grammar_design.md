# Check Grammar Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
is_correct = check_grammar(text)

# text: a string with words in it
# the method returns true or false

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
check_grammar("") 
# => throws an error # not a sentence

# 2
check_grammar("H..!") 
# => true

# 3
check_grammar("h..!") 
# => false

# 4
check_grammar("H..a") 
# => false

# 5
check_grammar("h..a") # neither capital letter nor punctuation mark
# => false

# 6
check_grammar("HHH...") # first word in upcase
# => true

# 7
check_grammar("H..!") # exclamation mark
# => true

# 8
check_grammar("H..?") # question mark
# => true

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
