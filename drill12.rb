# this script is a 10% rebate calculator. It asks the user for an amount and
# prints the 10% of the amount rebate.

print "Please enter the amount: "
amount = gets.chomp.to_f

rebate = amount * 0.1
puts "The rebate is $#{rebate}"