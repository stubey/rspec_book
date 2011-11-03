class Output
  def messages
    @messages = ||= []
  end
  
  def puts(message)
    messages << message
  end
  
  def output
    @output ||= Output.new
  end
end

Given /^I am not yet playing$/ do 
end

When /^I start a new game$/ do
  repsonse = Codebreaker::Game.new.start
end

Then /^I should see "([^"]*)"$/ do |arg1|
  output.messages.should include(message)
end
