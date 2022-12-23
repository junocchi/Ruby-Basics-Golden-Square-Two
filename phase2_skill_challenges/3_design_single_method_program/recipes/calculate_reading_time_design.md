# {{READING_TIME}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

calculate_reading_time: returns the time required to read the text in minutes

text: a string 



## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
calculate_reading_time("string" * 100) => 30 seconds
calculate_reading_time("string" * 200) => 1 minute
calculate_reading_time("string" * 12000) => 1 hour
calculate_reading_time("") => throws an error
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
