require "password_checker"

RSpec.describe "PasswordChecker" do

  it "Returns true if password has at least 8 characters" do
    password = PasswordChecker.new
    result = password.check("banana77")
    expect(result).to eq true
  end

  it "Fails" do
    password = PasswordChecker.new
    expect { password.check("banana7") }.to raise_error "Invalid password, must be 8+ characters."
  end

end