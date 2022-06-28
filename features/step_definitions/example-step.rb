require_relative '../../lib/example.rb'

World Example

Given('today is Sunday') do
  @today = 'Sunday'
end

When("I ask whether it's Friday yet") do
  @actual_answer = is_it_friday(@today)
end

Then("I should be told {string}") do |string|
  expect(@actual_answer).to eq(string)
end

Given(/^today is Friday$/) do
  @today = "Friday"
end
