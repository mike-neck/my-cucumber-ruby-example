require_relative '../../lib/example.rb'

World Example

Given('today is {string}') do |given_day|
  @today = given_day
end

When("I ask whether it's Friday yet") do
  @actual_answer = is_it_friday(@today)
end

Then("I should be told {string}") do |string|
  expect(@actual_answer).to eq(string)
end
