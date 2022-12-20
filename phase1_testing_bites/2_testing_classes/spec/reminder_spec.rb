#example
require "reminder"

Rspec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Alex")
    reminder.remind_me_to("Buy concert tickets")
    result = reminder.remind_me_to()
    expect(result).to eq "Buy concert tickets, Alex!"
  end
end