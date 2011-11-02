class Scum
  def initialize code
    @code = code
  end
  def guess the_guess
    mark = "+"
  end
end

Given /^the secret code is "(\d+)"$/ do |code|
  @scum = Scum.new(code)
end

When /^I guess "([^"]*)"$/ do |guess|
  @actual = @scum.guess(guess)
end

Then /^the mark should be "([^"]*)"$/ do |expected|
  @actual.should == expected
end

Then /^the mark should be \+$/ do
  @actual.should == "+"
end

Then /^the mark should be \-$/ do
  @actual.should == "-"
end
