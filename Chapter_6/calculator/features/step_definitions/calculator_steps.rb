#File: features/step_definitions/calculator_steps.rb
#
Given("the input {string}") do |input|
  @input = input
end

When("the calculator is run") do
  @output = `ruby calculator.rb '#{@input}'`

  #raise 'Calculator failed to run' unless $?.success?
  expect($?).to be_success, 'Calculator failed to run' # rspec
end

Then("the output should be {string}") do |expected_output|
  #raise "Expectation not met" unless @output == expected_output
  expect(@output).to eq(expected_output) # rspec
end

