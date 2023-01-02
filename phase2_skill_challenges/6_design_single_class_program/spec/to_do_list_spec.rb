require "to_do_list"
RSpec.describe TodoList do
  context "given no task" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end
  end

  context "given a task" do
    it "adds a task to the to-do list" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      expect(todo_list.list).to eq ["Walk the dog"]
    end
  end

  context "given two tasks" do
    it "has both tasks in the to-do list" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      todo_list.add("Eat the vegetables")
      expect(todo_list.list).to eq ["Walk the dog", "Eat the vegetables"]
    end
  end

  context "when we complete a task" do
    it "removes the task from the to-do list" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      todo_list.add("Eat the vegetables")
      todo_list.complete("Walk the dog")
      expect(todo_list.list).to eq ["Eat the vegetables"]
    end
  end

  context "when we try to complete a non-existent task" do
    it "fails" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      expect{ todo_list.complete("Walk the sheep") }.to raise_error "No such task."
    end
  end
end