# Check TODO Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

check_to_do(text)
#text: a string (e.g. "hello WORLD")
#The method returns true if TODO is present

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
check_to_do("")
# => throws an error "Not a string."

# 2
check_to_do("TODO")
# => true

# 3
check_to_do("Arsenal")
# => false

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._