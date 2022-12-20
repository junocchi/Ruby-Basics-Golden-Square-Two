class Reminder
  def initialize(name)
    @name = name
  end
  
  def remind_me_to(task)
    @task = task
  end

  def remind()
    fail "No reminder set!" if @task.nil?
    return "#{@task}, #{@name}!"
  end
end    

# the next three lines should be made comments when we test this file,
# otherwise they will call the class, instead of testing it.
# reminder_example = Reminder.new("david")
# reminder_example.remind_me_to("Wash the car")
# puts reminder_example.remind