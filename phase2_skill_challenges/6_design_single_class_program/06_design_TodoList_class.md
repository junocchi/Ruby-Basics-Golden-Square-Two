# TodoList Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

track tasks
add todo task
print task list
figure out which tasks have been completed
remove completed tasks

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class TodoList
  def initializer # name is a string
    # ...
  end

  def add(task) # task is a string representing a task
    # No return value, probably will store some content
  end

  def list
    # Returns a list of tasks
  end

  def complete(task)
    # Remove completed task
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations.- avoid repeated tasks
- store added tasks
- if [] no tasks, return "no uncompleted tasks"


```ruby
# EXAMPLE

# 1
todo_list = TodoList.new
todo_list.initializer # => []
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.add # => ["Walk the dog"]
# if you give a task as an example you should expect the task to be stored somewhere, like ["Walk the dog"]

# 3
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.add("Eat the vegetables")
todo_list.list => # ["Walk the dog", "Eat the vegetables"]
# if you give a task as an example you should expect the task to be stored somewhere, like ["Walk the dog"]

# 4 
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.add("Eat the vegetables")
todo_list.complete("Walk the dog")
todo_list.list # => ["Eat the vegetables"]

# 5
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.complete("Walk the sheep")
todo_list.list # => fails "No such task"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
