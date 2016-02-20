# The output of the program should look as follows:

# What is the amount being invested: 1000
# What is the annual interest rate (percentage): 10
# How many years will it accrue interest: 25

# The final value will be $10834.71 after 25 years.

class Calculator
  attr_accessor :amount, :interest, :years
  def initialize(amount, interest, years)
    @amount = amount.to_f
    @interest = interest.to_f
    @years = years.to_i
  end

  def final_value
    value = (@amount* (1 + @interest/100)**@years).round(2)
  end
end

print "What is the amount being invested: "
amount = gets.chomp
print "What is the annual interest rate (percentage): "
interest = gets.chomp
print "How many years will it accrue interest: "
years = gets.chomp
new_calculation = Calculator.new(amount, interest, years)
puts "The final value will be $#{new_calculation.final_value} after #{new_calculation.years} years."
